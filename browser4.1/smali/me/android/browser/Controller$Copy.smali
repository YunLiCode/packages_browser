.class Lme/android/browser/Controller$Copy;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Copy"
.end annotation


# instance fields
.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lme/android/browser/Controller;


# direct methods
.method public constructor <init>(Lme/android/browser/Controller;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "toCopy"    # Ljava/lang/CharSequence;

    .prologue
    .line 2155
    iput-object p1, p0, Lme/android/browser/Controller$Copy;->this$0:Lme/android/browser/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2156
    iput-object p2, p0, Lme/android/browser/Controller$Copy;->mText:Ljava/lang/CharSequence;

    .line 2157
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2151
    iget-object v0, p0, Lme/android/browser/Controller$Copy;->this$0:Lme/android/browser/Controller;

    iget-object v1, p0, Lme/android/browser/Controller$Copy;->mText:Ljava/lang/CharSequence;

    # invokes: Lme/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lme/android/browser/Controller;->access$2(Lme/android/browser/Controller;Ljava/lang/CharSequence;)V

    .line 2152
    const/4 v0, 0x1

    return v0
.end method
