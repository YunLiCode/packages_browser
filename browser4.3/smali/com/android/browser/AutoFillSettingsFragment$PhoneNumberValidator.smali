.class Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;
.super Ljava/lang/Object;
.source "AutoFillSettingsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AutoFillSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumberValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AutoFillSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/browser/AutoFillSettingsFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/AutoFillSettingsFragment;Lcom/android/browser/AutoFillSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/browser/AutoFillSettingsFragment;
    .param p2, "x1"    # Lcom/android/browser/AutoFillSettingsFragment$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;-><init>(Lcom/android/browser/AutoFillSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 81
    .local v1, "phoneNumberLength":I
    const-string v3, "[\\s\\.\\(\\)-]"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 85
    .local v2, "strippedPhoneNumberLength":I
    if-lez v1, :cond_0

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    # getter for: Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/browser/AutoFillSettingsFragment;->access$000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v4}, Lcom/android/browser/AutoFillSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    # invokes: Lcom/android/browser/AutoFillSettingsFragment;->updateSaveMenuItemState()V
    invoke-static {v3}, Lcom/android/browser/AutoFillSettingsFragment;->access$100(Lcom/android/browser/AutoFillSettingsFragment;)V

    .line 93
    return-void

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;->this$0:Lcom/android/browser/AutoFillSettingsFragment;

    # getter for: Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/browser/AutoFillSettingsFragment;->access$000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 99
    return-void
.end method
