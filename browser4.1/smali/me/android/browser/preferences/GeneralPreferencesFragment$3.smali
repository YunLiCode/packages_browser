.class Lme/android/browser/preferences/GeneralPreferencesFragment$3;
.super Ljava/lang/Object;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/android/browser/preferences/GeneralPreferencesFragment;->promptForHomepage(Landroid/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/preferences/GeneralPreferencesFragment;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lme/android/browser/preferences/GeneralPreferencesFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$3;->this$0:Lme/android/browser/preferences/GeneralPreferencesFragment;

    iput-object p2, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$3;->val$dialog:Landroid/app/AlertDialog;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 149
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 150
    iget-object v0, p0, Lme/android/browser/preferences/GeneralPreferencesFragment$3;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
