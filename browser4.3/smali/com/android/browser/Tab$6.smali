.class Lcom/android/browser/Tab$6;
.super Landroid/os/Handler;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/android/browser/Tab$6;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1205
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1210
    :goto_0
    return-void

    .line 1207
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/Tab$6;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->capture()V

    goto :goto_0

    .line 1205
    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method
