.class Lme/android/browser/Tab$6;
.super Landroid/webkit/WebBackForwardListClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/Tab;-><init>(Lme/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/Tab;


# direct methods
.method constructor <init>(Lme/android/browser/Tab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/Tab$6;->this$0:Lme/android/browser/Tab;

    .line 1168
    invoke-direct {p0}, Landroid/webkit/WebBackForwardListClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 3
    .param p1, "item"    # Landroid/webkit/WebHistoryItem;

    .prologue
    .line 1171
    iget-object v1, p0, Lme/android/browser/Tab$6;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;
    invoke-static {v1}, Lme/android/browser/Tab;->access$19(Lme/android/browser/Tab;)Ljava/util/regex/Pattern;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1173
    iget-object v1, p0, Lme/android/browser/Tab$6;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;
    invoke-static {v1}, Lme/android/browser/Tab;->access$19(Lme/android/browser/Tab;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 1179
    .local v0, "match":Z
    if-eqz v0, :cond_0

    .line 1180
    iget-object v1, p0, Lme/android/browser/Tab$6;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;
    invoke-static {v1}, Lme/android/browser/Tab;->access$20(Lme/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1181
    iget-object v1, p0, Lme/android/browser/Tab$6;->this$0:Lme/android/browser/Tab;

    # getter for: Lme/android/browser/Tab;->mMainView:Landroid/webkit/WebView;
    invoke-static {v1}, Lme/android/browser/Tab;->access$20(Lme/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 1184
    :cond_0
    iget-object v1, p0, Lme/android/browser/Tab$6;->this$0:Lme/android/browser/Tab;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lme/android/browser/Tab;->access$21(Lme/android/browser/Tab;Ljava/util/regex/Pattern;)V

    .line 1186
    .end local v0    # "match":Z
    :cond_1
    return-void
.end method
