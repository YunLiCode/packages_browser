.class Lme/android/browser/Preloader$PreloaderSession$1;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Preloader$PreloaderSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/android/browser/Preloader$PreloaderSession;


# direct methods
.method constructor <init>(Lme/android/browser/Preloader$PreloaderSession;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Preloader$PreloaderSession$1;->this$1:Lme/android/browser/Preloader$PreloaderSession;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lme/android/browser/Preloader$PreloaderSession$1;->this$1:Lme/android/browser/Preloader$PreloaderSession;

    # getter for: Lme/android/browser/Preloader$PreloaderSession;->this$0:Lme/android/browser/Preloader;
    invoke-static {v0}, Lme/android/browser/Preloader$PreloaderSession;->access$1(Lme/android/browser/Preloader$PreloaderSession;)Lme/android/browser/Preloader;

    move-result-object v0

    iget-object v1, p0, Lme/android/browser/Preloader$PreloaderSession$1;->this$1:Lme/android/browser/Preloader$PreloaderSession;

    # getter for: Lme/android/browser/Preloader$PreloaderSession;->mId:Ljava/lang/String;
    invoke-static {v1}, Lme/android/browser/Preloader$PreloaderSession;->access$0(Lme/android/browser/Preloader$PreloaderSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/android/browser/Preloader;->discardPreload(Ljava/lang/String;)V

    .line 149
    return-void
.end method
