varying vec2 vUv;

void main()
{
    // Pattern 3
    // float strenght = vUv.x;

    // Pattern 5
    // float strenght =  1.0 - vUv.y ;

    // // Pattern 7
    // float strenght =   mod(vUv.y * 10.0 , 1.0);

    //   // Pattern 8
    // float strenght =   mod(vUv.y * 10.0 , 1.0);
    // strenght = step(0.5, strenght);

      // Pattern 9
    // float strenght =   mod(vUv.y * 10.0 , 1.0);
    // strenght = step(0.8, strenght);

      // Pattern 10
    // float strenght =   mod(vUv.x * 10.0 , 1.0);
    // strenght = step(0.8, strenght);

    // Pattern 11
    // float strenght =   step(0.8, mod(vUv.x * 10.0 , 1.0));
    // strenght +=  step(0.8, mod(vUv.y * 10.0 , 1.0));

    // Pattern 12
    // float strenght =  1.0 - step(0.15, mod(vUv.x * 10.0 , 1.0));
    // strenght -=   step(0.15, mod(vUv.y * 10.0 , 1.0));

     // Pattern 12
    // float strenght =  step(0.8, mod(vUv.x * 10.0 , 1.0));
    // strenght *=   step(0.8, mod(vUv.y * 10.0 , 1.0));

     // Pattern 13
    // float strenght =  step(0.3, mod(vUv.x * 10.0 , 1.0));
    // strenght *=   step(0.8, mod(vUv.y * 10.0 , 1.0));

     // Pattern 14
    // float barX = step(0.3, mod( vUv.x * 10.0 , 1.0)) ;
    // barX *=  step(0.8, mod( vUv.y * 10.0 , 1.0)) ;

    // float barY =  step(0.8, mod( vUv.x * 10.0 , 1.0)) ;
    // barY *=  step(0.3, mod( vUv.y * 10.0 , 1.0)) ;

    // float strenght = barX + barY;
  
    // gl_FragColor = vec4(strenght ,strenght ,strenght, 1.0);

    // Pattern 15
    float barX =  step(0.5, mod( (vUv.x) * 10.0 -0.15 , 1.0)) ;
    barX *=   step(0.8, mod(vUv.y * 10.0 , 1.0))  ;

    float barY =  step(0.5, mod( vUv.y * 10.0 -0.15, 1.0)) ;
    barY *=  step(0.8, mod( vUv.x * 10.0 , 1.0)) ;

    float strenght =  barX  + barY;
  
    gl_FragColor = vec4(strenght ,strenght ,strenght, 1.0);
}