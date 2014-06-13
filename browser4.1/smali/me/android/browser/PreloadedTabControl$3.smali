.class Lme/android/browser/PreloadedTabControl$3;
.super Landroid/webkit/SearchBox$SearchBoxListener;
.source "PreloadedTabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/PreloadedTabControl;->searchBoxCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/PreloadedTabControl;


# direct methods
.method constructor <init>(Lme/android/browser/PreloadedTabControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/PreloadedTabControl$3;->this$0:Lme/android/browser/PreloadedTabControl;

    .line 112
    invoke-direct {p0}, Landroid/webkit/SearchBox$SearchBoxListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelComplete(Z)V
    .locals 0
    .param p1, "called"    # Z

    .prologue
    .line 116
    return-void
.end method
