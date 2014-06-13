.class public interface abstract Lme/android/browser/view/PieMenu$PieView;
.super Ljava/lang/Object;
.source "PieMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/view/PieMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PieView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/view/PieMenu$PieView$OnLayoutListener;
    }
.end annotation


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract layout(IIZFI)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setLayoutListener(Lme/android/browser/view/PieMenu$PieView$OnLayoutListener;)V
.end method
