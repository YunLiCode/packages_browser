.class Lme/android/browser/NavScreen$1;
.super Ljava/lang/Object;
.source "NavScreen.java"

# interfaces
.implements Lme/android/browser/NavTabScroller$OnRemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/NavScreen;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/NavScreen;


# direct methods
.method constructor <init>(Lme/android/browser/NavScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/NavScreen$1;->this$0:Lme/android/browser/NavScreen;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovePosition(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lme/android/browser/NavScreen$1;->this$0:Lme/android/browser/NavScreen;

    iget-object v1, v1, Lme/android/browser/NavScreen;->mAdapter:Lme/android/browser/NavScreen$TabAdapter;

    invoke-virtual {v1, p1}, Lme/android/browser/NavScreen$TabAdapter;->getItem(I)Lme/android/browser/Tab;

    move-result-object v0

    .line 138
    .local v0, "tab":Lme/android/browser/Tab;
    iget-object v1, p0, Lme/android/browser/NavScreen$1;->this$0:Lme/android/browser/NavScreen;

    # invokes: Lme/android/browser/NavScreen;->onCloseTab(Lme/android/browser/Tab;)V
    invoke-static {v1, v0}, Lme/android/browser/NavScreen;->access$1(Lme/android/browser/NavScreen;Lme/android/browser/Tab;)V

    .line 139
    return-void
.end method
