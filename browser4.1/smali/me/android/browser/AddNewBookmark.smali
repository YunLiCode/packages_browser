.class Lme/android/browser/AddNewBookmark;
.super Landroid/widget/LinearLayout;
.source "AddNewBookmark.java"


# instance fields
.field private mUrlText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lme/android/browser/AddNewBookmark;->setWillNotDraw(Z)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "factory":Landroid/view/LayoutInflater;
    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v1, 0x7f0d0008

    invoke-virtual {p0, v1}, Lme/android/browser/AddNewBookmark;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lme/android/browser/AddNewBookmark;->mUrlText:Landroid/widget/TextView;

    .line 44
    return-void
.end method


# virtual methods
.method setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lme/android/browser/AddNewBookmark;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
