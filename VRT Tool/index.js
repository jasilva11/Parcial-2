const express = require('express');
const resemble = require("resemblejs");
const { lstatSync, readdirSync } = require('fs')
const { join } = require('path')
var app = require('express')();
var shell = require('shelljs');
var fs = require('fs');

app.use(express.static(__dirname));

app.get('/', function(req, res) {
    var img;
    var text;

	const isDirectory = source => lstatSync(source).isDirectory()
	const getDirectories = source =>
	  readdirSync(source).map(name => join(source, name)).filter(isDirectory)
    var newLine = '\n';
    var foundedMutants = 0;
    resemble.outputSettings({
	    ignoredBox: {
	        left: 0,
	        top: 0,
	        right: 1080,
	        bottom: 70
	    }
	});
	var htmlFinal = `<h1>VRT Report total</h1>` + newLine;
    getDirectories('../screenshots').forEach(version=>{
    	version = version.split('\\')[2];
    	if(version!='baseline'){
    		var html = `<h1>VRT Report</h1>` + newLine;
	        html+='<br><table>' + newLine;
	        html+=`<tr><th>baseline</th><th>${version.split('-')[1]}</th><th>Diferences</th><th>Important information</th></tr>` + newLine;
	        console.log(version)
            var founded = null;
            var foundedHtml = '';
            for(var i = 1; i < 89; i++) {
                var diff = resemble(`../screenshots/baseline/screenshot${i}.png`)
                .compareTo(`../screenshots/${version}/screenshot${i}.png`)
                .ignoreLess()
                .ignoreAntialiasing()
                .onComplete(function(data) {
                	if(parseFloat(data.misMatchPercentage) > 0){
	                    img = data.getImageDataUrl();
	                    var htmlRow='<tr>' + newLine;
	                    htmlRow+=`<td><img src="../../screenshots/baseline/screenshot${i}.png" style="height: 174px; width: 100px"></td>` + newLine;
	                    htmlRow+=`<td><img src="../../screenshots/${version}/screenshot${i}.png" style="height: 174px; width: 100px"></td>` + newLine;
	                    htmlRow+='<td><img src="' + img + '" style="height: 174px; width: 100px"></td>' + newLine;
	                    htmlRow+='<td><h4>screenshot n: ' + i + '<br>misMatchPercentage: ' + data.misMatchPercentage + '<br>isSameDimensions:' + data.isSameDimensions + '<br>dimensionDifference:{width:' + data.dimensionDifference.width + ', height:' + data.dimensionDifference.height + '}</h4></td>' + newLine;
	                    htmlRow+='</tr>' + newLine;
	                    if(parseFloat(data.misMatchPercentage) > 0.2){
	                        if(!founded){
	                        	founded = i;
	                        	foundedHtml = htmlRow;
	                        	foundedMutants++;
	                        }
	                    }
	                    html+=htmlRow;
	                }
                });
            }
            html+='</table></br>' + newLine;
            if(founded) {
                html += `<h4>Error founded at: screenshot ${founded}</h4></br>` + newLine;
                htmlFinal+=`<h2>${foundedMutants}. ${version}</h2>` + newLine;
                htmlFinal+='<br><table>' + newLine;
	        	htmlFinal+=`<tr><th>baseline</th><th>${version.split('-')[1]}</th><th>Diferences</th><th>Important information</th></tr>` + newLine;
                htmlFinal+= foundedHtml;
                htmlFinal+='</table></br>' + newLine;
                htmlFinal+=`<h4><a href="report-${version}.html"> Check report</a></h4></br>` + newLine;
            }
            fs.writeFileSync(`reports/report-${version}.html`, html);
            fs.writeFileSync(`reports/index.html`, htmlFinal);
	    }
    });
    htmlFinal+=`<h2>Number of founded errors: ${foundedMutants}</h2></br>` + newLine;
    htmlFinal += `<h2>Density: ${(foundedMutants / (getDirectories('../screenshots').length - 1)) * 100}%</h2></br>` + newLine;

    fs.writeFileSync(`reports/index.html`, htmlFinal);
    res.send('Report generated');    
});

app.listen(process.env.PORT || 4000, function(){
    console.log('Node js server is running');
});