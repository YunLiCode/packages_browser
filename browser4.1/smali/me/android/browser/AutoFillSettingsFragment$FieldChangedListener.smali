.class Lme/android/browser/AutoFillSettingsFragment$FieldChangedListener;
.super Ljava/lang/Object;
.source "AutoFillSettingsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/AutoFillSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/AutoFillSettingsFragment;


# direct methods
.method private constructor <init>(Lme/android/browser/AutoFillSettingsFragment;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lme/android/browser/AutoFillSettingsFragment$FieldChangedListener;->this$0:Lme/android/browser/AutoFillSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/android/browser/AutoFillSettingsFragment;Lme/android/browser/AutoFillSettingsFragment$FieldChangedListener;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lme/android/browser/AutoFillSettingsFragment$FieldChangedListener;-><init>(Lme/android/browser/AutoFillSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 104
    iget-object v0, p0, Lme/android/browser/AutoFillSettingsFragment$FieldChangedListener;->this$0:Lme/android/browser/AutoFillSettingsFragment;

    # invokes: Lme/android/browser/AutoFillSettingsFragment;->updateSaveMenuItemState()V
    invoke-static {v0}, Lme/android/browser/AutoFillSettingsFragment;->access$1(Lme/android/browser/AutoFillSettingsFragment;)V

    .line 105
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 111
    return-void
.end method
