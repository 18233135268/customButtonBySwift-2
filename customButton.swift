//
//  customButton.swift
//  customButtonBySwift
//
//  Created by SmartestEE on 16/9/6.
//  Copyright © 2016年 SmartestEE. All rights reserved.
//

import Foundation
import UIKit

var WIDTH = UIScreen.mainScreen().bounds.width
var HEIGHT = UIScreen.mainScreen().bounds.height
let ctxx = UIGraphicsGetCurrentContext()
var paths = CGPathCreateMutable()




class customButton: UIButton {

    var runRadius:CGFloat = 0
    var timer:NSTimer?
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        self.opaque = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)

        //画一个圆

        //一笔完成绘图的
        let o1 : CGFloat = (sqrt(2) + sqrt(26)) / 32
        
            drawCircleByPath(WIDTH/2, y: HEIGHT/2, z:(CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))), a: true, w: WIDTH / 4, r: 3 * (CGFloat)(M_PI) / 4 + (asin((sqrt(3.0) / 4))), ctx: ctxx!, color: UIColor.whiteColor().CGColor,path: paths)
            drawCircleByPath((1 / 2 - o1) * WIDTH , y: HEIGHT / 2 + o1 * WIDTH, z: 17 * (CGFloat)(M_PI) / 12, a: true, w: WIDTH/8, r:(CGFloat) (M_PI) / 12, ctx: ctxx!, color: UIColor.grayColor().CGColor,path: paths)
        
            drawCircleByPath(WIDTH/2, y: HEIGHT/2, z:(3 * (CGFloat)(M_PI) / 4 - (asin(sqrt(3) / 4))), a: true, w: WIDTH / 4, r: (CGFloat)(M_PI) / 4 + (asin(sqrt(3) / 4)), ctx: ctxx!, color: UIColor.whiteColor().CGColor,path: paths)
            drawCircleByPath((1 / 2 + o1) * WIDTH , y: HEIGHT/2 + o1 * WIDTH, z:11 * (CGFloat)(M_PI) / 12, a: true, w: WIDTH / 8, r: 19 * (CGFloat)(M_PI) / 12, ctx: ctxx!, color: UIColor.grayColor().CGColor,path: paths)
            
            drawText(ctxx!)
        
            //闭合路径
           // CGPathCloseSubpath(paths)

       let path = CGPathCreateMutable()
        
        if runRadius < (CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))) {
            drawCircleByPath(WIDTH / 2, y: HEIGHT/2, z: (CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))), a: true, w: WIDTH / 4, r: (CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))) - runRadius, ctx: ctxx!, color:UIColor.blueColor().CGColor, path: path)
        }else if runRadius < (CGFloat)(M_PI) + (CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))){
            drawCircleByPath(WIDTH/2, y: HEIGHT/2, z: (CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))), a: true, w: WIDTH / 4, r: 2 * (CGFloat)(M_PI) - runRadius + (CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))), ctx: ctxx!, color: UIColor.blueColor().CGColor, path: path)
        } else if runRadius < (31 * (CGFloat)(M_PI)/12 - (asin((sqrt(3.0) / 4)))){
           //drawCircleByPath(WIDTH/2, y: HEIGHT/2, z: (CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))), a: true, w: WIDTH / 4, r: (CGFloat)(M_PI) - 80/180, ctx: ctxx!, color: UIColor.blueColor().CGColor, path: path)
           drawCircleByPath(WIDTH/2, y: HEIGHT/2, z:(CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))), a: true, w: WIDTH / 4, r: 3 * (CGFloat)(M_PI) / 4 + (asin((sqrt(3.0) / 4))), ctx: ctxx!, color: UIColor.blueColor().CGColor,path: path)
            
           drawCircleByPath((1 / 2 - o1) * WIDTH, y:  HEIGHT / 2 + o1 * WIDTH, z: 17 * (CGFloat)(M_PI) / 12, a: true, w: WIDTH / 8, r: 32 * (CGFloat)(M_PI) / 12 - runRadius - (asin((sqrt(3.0) / 4))), ctx: ctxx!, color: UIColor.blueColor().CGColor, path: path)
        } else if runRadius < (37 * (CGFloat)(M_PI)/12 - 3 * (asin((sqrt(3.0) / 4)))){
            
            drawCircleByPath(WIDTH/2, y: HEIGHT/2, z:(CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))), a: true, w: WIDTH / 4, r: 3 * (CGFloat)(M_PI) / 4 + (asin((sqrt(3.0) / 4))), ctx: ctxx!, color: UIColor.blueColor().CGColor,path: path)
            drawCircleByPath((1 / 2 - o1) * WIDTH , y: HEIGHT / 2 + o1 * WIDTH, z: 17 * (CGFloat)(M_PI) / 12, a: true, w: WIDTH/8, r:(CGFloat) (M_PI) / 12, ctx: ctxx!, color: UIColor.blueColor().CGColor,path: path)
            //需要调整 r的值
           drawCircleByPath(WIDTH/2, y: HEIGHT/2, z: 3 * (CGFloat)(M_PI)/4 - (asin(sqrt(3) / 4)), a: true, w: WIDTH / 4, r:10 * (CGFloat)(M_PI)/3 - 2 * (asin(sqrt(3) / 4)) - runRadius, ctx: ctxx!, color: UIColor.blueColor().CGColor, path: path)
            //print(path)
        } else if runRadius < (53 * (CGFloat)(M_PI)/12 - 3 * (asin((sqrt(3.0) / 4)))){
            drawCircleByPath(WIDTH/2, y: HEIGHT/2, z:(CGFloat)(M_PI) / 4 - (asin((sqrt(3.0) / 4))), a: true, w: WIDTH / 4, r: 3 * (CGFloat)(M_PI) / 4 + (asin((sqrt(3.0) / 4))), ctx: ctxx!, color: UIColor.blueColor().CGColor,path: path)
            drawCircleByPath((1 / 2 - o1) * WIDTH , y: HEIGHT / 2 + o1 * WIDTH, z: 17 * (CGFloat)(M_PI) / 12, a: true, w: WIDTH/8, r:(CGFloat) (M_PI) / 12, ctx: ctxx!, color: UIColor.blueColor().CGColor,path: path)
            drawCircleByPath(WIDTH/2, y: HEIGHT/2, z:(3 * (CGFloat)(M_PI) / 4 - (asin(sqrt(3) / 4))), a: true, w: WIDTH / 4, r: (CGFloat)(M_PI) / 4 + (asin(sqrt(3) / 4)), ctx: ctxx!, color: UIColor.blueColor().CGColor,path: path)
            //需要调整 r的值
            if (runRadius - 4 * (CGFloat)(M_PI) + 3 * (asin((sqrt(3.0) / 4)))) < 0 {
                drawCircleByPath((1 / 2 + o1) * WIDTH , y: HEIGHT/2 + o1 * WIDTH, z:11 * (CGFloat)(M_PI) / 12, a: true, w: WIDTH / 8, r: 4 * (CGFloat)(M_PI) - runRadius - 3 * (asin(sqrt(3) / 4)), ctx: ctxx!, color: UIColor.blueColor().CGColor,path: path)
            }else{
                drawCircleByPath((1 / 2 + o1) * WIDTH , y: HEIGHT/2 + o1 * WIDTH, z:11 * (CGFloat)(M_PI) / 12, a: true, w: WIDTH / 8, r: 0, ctx: ctxx!, color: UIColor.blueColor().CGColor,path: path)
                drawCircleByPath((1 / 2 + o1) * WIDTH , y: HEIGHT/2 + o1 * WIDTH, z:0 ,a: true, w: WIDTH / 8, r: 6 * (CGFloat)(M_PI) - runRadius - 3 * (asin(sqrt(3) / 4)), ctx: ctxx!, color: UIColor.blueColor().CGColor,path: path)
            }
            
        }

        
    }
    /*
     @param x 圆的圆点的横坐标
     @param y 圆的原点的纵坐标
     @param z 圆的起点与x轴的夹脚
     @param a 表示画圆的方向，1表示逆时针，0表示顺时针
     @param w 表示画的圆的半径
     @param r 终点与x轴的角度
     @param ctx 上下文文本内容
     */

    //通过CGContext创建
    func drawCircle(x:CGFloat, y: CGFloat, z: CGFloat, a: Int32, w: CGFloat, r: CGFloat,ctx: CGContext, color:CGColor){
        
        CGContextSetFillColorWithColor(ctx,color)
        CGContextAddArc(ctx, x, y, w, z, r, a)
        CGContextSetStrokeColorWithColor(ctx, UIColor.whiteColor().CGColor)
        CGContextSetLineWidth(ctx, 16)
        CGContextSetLineCap(ctx, CGLineCap.Butt)
        CGContextDrawPath(ctx, CGPathDrawingMode.Stroke)
        CGContextFillPath(ctx)
    
    }
    //通过CGPath创建
    func drawCircleByPath(x:CGFloat, y: CGFloat, z: CGFloat, a: Bool, w: CGFloat, r: CGFloat,ctx: CGContext, color:CGColor, path:CGMutablePath){
        //let path = CGPathCreateMutable()

        CGPathAddArc(path,nil, x, y, w, z, r, a)
        CGContextAddPath(ctx, path)
       // CGContextSetRGBStrokeColor(ctx, 255.0, 255.0, 255.0, 1.0)
        CGContextSetStrokeColorWithColor(ctx, color)
        CGContextSetLineWidth(ctx, 10)
        CGContextStrokePath(ctx)
    }
    
    override func pointInside(point: CGPoint, withEvent event: UIEvent?) -> Bool {
        super.pointInside(point, withEvent: event)
        
        if CGPathContainsPoint(paths, nil, point, false) {
            //print(paths)
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("Counter"), userInfo: nil, repeats: true)
            //timer?.fire()
            print("--包含")
            //runRadius = 3*(CGFloat)(M_PI)
            //paths = CGPathCreateMutable()
            
            //setNeedsDisplay()
            
            //timer
                         return true
        }else{
           // print("不包含")
            return false
        }
        
    }
    func Counter(){
        if runRadius > (53 * (CGFloat)(M_PI)/12 - 3.5 * (asin((sqrt(3.0) / 4)))){
            timer?.invalidate()
            timer = nil
        }else{
            runRadius = runRadius + (CGFloat)(M_PI)/30
            //print(runRadius)
            setNeedsDisplay()
        }

        
        
    }
    
    func drawText(context:CGContextRef){
        let textName = "你好啊"
        let rect = CGRectMake(WIDTH/2-40, HEIGHT/2-40, 80, 80)
        let font = UIFont.systemFontOfSize(16)
        let color = UIColor.greenColor()
        let style = NSMutableParagraphStyle()
        style.alignment = .Center
        
        (textName as String).drawInRect(rect,withAttributes: [NSFontAttributeName:font,NSForegroundColorAttributeName:color,NSParagraphStyleAttributeName:style])
    }
    
    
    /*
     功能：绘制边缘路径的动画效果
     本质：利用不同的颜色实现路径的重新绘制
     */
    
}
