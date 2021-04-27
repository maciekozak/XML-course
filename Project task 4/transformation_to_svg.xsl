<?xml version="1.0" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	
    <xsl:template match="warehouse">
        <center><svg width="1240" height="1024" xmlns="http://www.w3.org/2000/svg">
            <text x="55" y="55" font-family="sans-serif" font-size="35" fill="#000000">
               Logo:
			   <animate attributeName="x" from="55" to ="105" begin="0s" dur="5s" fill="freeze"/>
			</text>
	
	<g id="logo" onmouseover="showw(evt)" onmouseout="remove()">
	<defs>
		<linearGradient id="grad2" x1="0%" y1="0%" x2="0%" y2="100%">
			<stop offset="0%" style="stop-color:#283048;stop-opacity:1" />
			<stop offset="100%" style="stop-color:#859398;stop-opacity:1" />
		</linearGradient>
	</defs>
	
	<defs>
		<radialGradient id="grad1" cx="50%" cy="50%" r="50%" fx="50%" fy="50%">
			<stop offset="0%" style="stop-color:#53DCFF;stop-opacity:0" />
			<stop offset="10%" style="stop-color:#85D8CE;stop-opacity:0.5" />
			<stop offset="100%" style="stop-color:#085078;stop-opacity:1" />
		</radialGradient>
	</defs>
  
    <defs>
		<linearGradient id="grad3" x1="0%" y1="0%" x2="100%" y2="0%">
			<stop offset="0%" style="stop-color:#232526;stop-opacity:1" />
			<stop offset="100%" style="stop-color:#414345;stop-opacity:0.5" />
		</linearGradient>
	</defs>
  
	<rect x="48" y="107" style="fill:#FFFFFF;" width="416" height="256"/>
	
	<rect x="48" y="107" style="fill:url(#grad2);" width="416" height="64"/>
	
	<line x1="48" y1="171" x2="464" y2="172" style="stroke:#FFFFFF;stroke-width:1" />
	
	<!-- path is made in Inkscape -->
	<path style="fill:#5C546A;" d="M459.133,75.984H52.852C32.531,75.984,16,92.477,16,112.75v291.234c0,4.422,3.578,8,8,8h464
		c4.422,0,8-3.578,8-8V112.75C496,92.477,479.461,75.984,459.133,75.984z M48,355.984v-240c0-4.418,3.582-8,8-8h400
		c4.418,0,8,3.582,8,8v240c0,4.418-3.582,8-8,8H56C51.582,363.984,48,360.402,48,355.984z"/>
	
	<!-- path is made in Inkscape -->
	<path style="fill:#B9BBC1;" d="M504,395.984H8c-4.422,0-8,3.578-8,8l0,0c0,17.664,14.367,32.031,32.031,32.031h447.937
		c17.664,0,32.031-14.367,32.031-32.031l0,0C512,399.562,508.422,395.984,504,395.984z"/>
		
	<!-- path is made in Inkscape -->
	<path style="fill:#8B8996;" d="M224,411.984h64c8.836,0,16-7.164,16-16h-96C208,404.821,215.163,411.984,224,411.984z"/>
	


	<rect x="100" y="130" rx="10" ry="5" width="60" height="15" style="fill:#FFFFFF;" />
				
	<rect x="276" y="135" rx="5" ry="5" width="30" height="10" style="fill:#FFFFFF;" />
	<rect x="316" y="135" rx="5" ry="5" width="30" height="10" style="fill:#FFFFFF;" />
	<rect x="356" y="135" rx="5" ry="5" width="30" height="10" style="fill:#FFFFFF;" />
	
	<rect x="250" y="200" rx="5" ry="5" width="100" height="15" style="fill:#B9BBC1;" />
	<rect x="250" y="225" rx="5" ry="5" width="70" height="15" style="fill:#B9BBC1;" />
	
	<rect x="250" y="256" rx="5" ry="5" width="150" height="10" style="fill:#B9BBC1;" />
	<rect x="250" y="276" rx="5" ry="5" width="150" height="10" style="fill:#B9BBC1;" />
	<rect x="250" y="296" rx="5" ry="5" width="150" height="10" style="fill:#B9BBC1;" />
	
	<rect x="80" y="190" rx="20" ry="20" width="150" height="150" style="fill:url(#grad1);"/>
	
	<circle cx="256" cy="90" r="5" style="fill:#B9BBC1;"/>
	<circle cx="256" cy="90" r="2" style="fill:grey;"/>
	</g>	
	
			
		
		<text x="55" y="512" font-family="sans-serif" font-size="35" fill="#000000">
            Quantity of laptops:
			<animate attributeName="x" from="55" to ="105" begin="0s" dur="5s" fill="freeze"/>
		</text>
			<defs>
			<linearGradient id="grad3" x1="0%" y1="0%" x2="0%" y2="100%">
				<stop offset="0%" style="stop-color:#232526;stop-opacity:1" />
				<stop offset="100%" style="stop-color:#414345;stop-opacity:0.5" />
			</linearGradient>
		</defs>
		
		<defs>
			<linearGradient id="grad4" x1="0%" y1="0%" x2="0%" y2="100%">
				<stop offset="0%" style="stop-color:#FF512F;stop-opacity:1" />
				<stop offset="100%" style="stop-color:#DD2476;stop-opacity:0.5" />
			</linearGradient>
		</defs>
		
		<rect x="20" y="587" rx="10" ry="10" width="1080" height="400" style="fill:#FFFFF0;" stroke="black" stroke-width="1">
			<animate 
           attributeType="XML"
		   attributeName="stroke-width"
		   values="0;4;4;4;0" 
		   dur="6s" 
		   repeatCount="indefinite" 
           begin="5s" />
		</rect>
		<line x1="25" y1="717" x2="1095" y2="717" style="stroke:#000000;stroke-width:2">
			<animate 
           attributeType="XML"
		   attributeName="x1"
           from="25"
           to="1095" 
		   begin="2s"
           dur="2s"
           fill="freeze" />
		   <animate 
           attributeType="XML"
		   attributeName="x2"
           from="1095"
           to="25" 
		   begin="2s"
           dur="2s"
           fill="freeze" />
		</line>
            <xsl:for-each select="product">
                <xsl:variable name="no" select="(position()-1) * 50"/>
                <xsl:variable name="name" select="description/fullName"/>
                <xsl:variable name="quantity" select="quantity"/>
				
				
				
				<text x="{$no + 55}" y="{512 + 197 - ($quantity * 4)}" font-family="sans-serif" font-size="20">
                    <xsl:value-of select="$quantity"/>
				<animate attributeType="XML" attributeName="height" from="100" to="{$quantity * 4}"
                             dur="1s" fill="freeze"/>
				<animate attributeType="XML" attributeName="y" from="712" to="{512+197-$quantity * 4}"
                             dur="1s" fill="freeze"/>
                </text>
                <rect onclick="changeColor(evt)" x="{$no + 50}"  width="30" y="150" height="{$quantity * 4}"
                      fill="url(#grad3)"
                      stroke="black" stroke-width="1">
				<animate attributeType="XML" attributeName="height" from="250" to="{$quantity * 4}"
                             dur="1s" fill="freeze"/>
				<animate attributeType="XML" attributeName="y" from="712" to="{512+200-$quantity * 4}"
                             dur="1s" fill="freeze"/>
				</rect>     
				
			
                <text writing-mode="tb-rl" x="{$no + 61}" y="210" font-family="sans-serif" font-size="20"
                      fill="#000000">
                    <xsl:value-of select="$name"/>
				<animate attributeType="XML" attributeName="y" from="762" to="722" dur="2s" fill="freeze"/>
				<animate attributeType="XML" attributeName="opacity" from="0" to="1" dur="2s" fill="freeze"/>
                </text>
				
            </xsl:for-each>

			<rect id="btn" onclick="show()" x="1000" y="100" height="50" width="80"
                      fill="grey"
                      stroke="black" stroke-width="2" cursor="pointer"> 
					  </rect>
					  <text onclick="show()" x="1005" y="128" font-family="sans-serif" font-size="15" fill="black" cursor="pointer">Click me!</text>
			
            <script type="text/ecmascript"><![CDATA[
		      function changeColor(evt) {
		        var rect = evt.target;
		        var Fill = rect.getAttribute("fill");
		        if (Fill=="url(#grad3)")
		          rect.setAttribute("fill", "url(#grad4)");
		        if (Fill=="url(#grad4)")
		          rect.setAttribute("fill", "url(#grad3)");
			  }
			  
			function show(){
			alert("Tax in Poland is equal to 23%. As a company we have warehouse in the Germany and Poland. The overall quantity is shown in the diagram below.")
			}
			
			function showw(evt){
			var svgNS = "http://www.w3.org/2000/svg";
			var newText = document.createElementNS(svgNS,"text");
			newText.setAttributeNS(null,"id","new");
			newText.setAttributeNS(null,"x",540);     
			newText.setAttributeNS(null,"y",220); 
			newText.setAttributeNS(null,"font-size","15");

			var textNode = document.createTextNode("It is our logo. Welcome to our website!");
			newText.appendChild(textNode);
			document.getElementById("logo").appendChild(newText);
			}
			
			function remove(evt){
			var child = document.getElementById('new');
			var parent = document.getElementById('logo');
			parent.removeChild(child);
			}
		     ]]></script>

	</svg></center>
	
	
    </xsl:template>

</xsl:stylesheet>