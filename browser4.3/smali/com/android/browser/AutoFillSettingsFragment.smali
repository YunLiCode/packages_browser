.class public Lcom/android/browser/AutoFillSettingsFragment;
.super Landroid/app/Fragment;
.source "AutoFillSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;,
        Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;
    }
.end annotation


# instance fields
.field private mAddressLine1Edit:Landroid/widget/EditText;

.field private mAddressLine2Edit:Landroid/widget/EditText;

.field private mCityEdit:Landroid/widget/EditText;

.field private mCompanyEdit:Landroid/widget/EditText;

.field private mCountryEdit:Landroid/widget/EditText;

.field private mEmailEdit:Landroid/widget/EditText;

.field private mFieldChangedListener:Landroid/text/TextWatcher;

.field private mFullNameEdit:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mInitialised:Z

.field private mPhoneEdit:Landroid/widget/EditText;

.field private mSaveMenuItem:Landroid/view/MenuItem;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mStateEdit:Landroid/widget/EditText;

.field private mUniqueId:I

.field private mZipEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mUniqueId:I

    .line 115
    new-instance v0, Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;-><init>(Lcom/android/browser/AutoFillSettingsFragment;Lcom/android/browser/AutoFillSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    .line 118
    new-instance v0, Lcom/android/browser/AutoFillSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AutoFillSettingsFragment$1;-><init>(Lcom/android/browser/AutoFillSettingsFragment;)V

    iput-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/browser/AutoFillSettingsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/AutoFillSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/AutoFillSettingsFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/browser/AutoFillSettingsFragment;->updateSaveMenuItemState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/AutoFillSettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/browser/AutoFillSettingsFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/browser/AutoFillSettingsFragment;->closeEditor()V

    return-void
.end method

.method private closeEditor()V
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 284
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 285
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private updateSaveMenuItemState()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveMenuItem:Landroid/view/MenuItem;

    if-nez v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-boolean v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mInitialised:Z

    if-nez v2, :cond_2

    .line 259
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    .line 264
    .local v0, "currentState":Z
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 275
    .local v1, "newState":Z
    :cond_4
    if-eq v0, v1, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/AutoFillSettingsFragment;->setHasOptionsMenu(Z)V

    .line 146
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 151
    const/high16 v0, 0x7f100000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 152
    const v0, 0x7f0d0096

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveMenuItem:Landroid/view/MenuItem;

    .line 153
    invoke-direct {p0}, Lcom/android/browser/AutoFillSettingsFragment;->updateSaveMenuItemState()V

    .line 154
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    const v2, 0x7f040003

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0d000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    .line 208
    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 209
    const v2, 0x7f0d000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    .line 210
    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    .line 212
    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    .line 214
    const v2, 0x7f0d000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    .line 215
    const v2, 0x7f0d0010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    .line 216
    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    .line 217
    const v2, 0x7f0d0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    .line 218
    const v2, 0x7f0d0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    .line 220
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 223
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 229
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;-><init>(Lcom/android/browser/AutoFillSettingsFragment;Lcom/android/browser/AutoFillSettingsFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    move-result-object v0

    .line 233
    .local v0, "activeProfile":Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    if-eqz v0, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getAddressLine1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getAddressLine2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getZipCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mInitialised:Z

    .line 248
    invoke-direct {p0}, Lcom/android/browser/AutoFillSettingsFragment;->updateSaveMenuItemState()V

    .line 250
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v12, 0x1

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 198
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 161
    :pswitch_0
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSettings:Lcom/android/browser/BrowserSettings;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/BrowserSettings;->setAutoFillProfile(Landroid/webkit/WebSettingsClassic$AutoFillProfile;Landroid/os/Message;)V

    .line 176
    invoke-direct {p0}, Lcom/android/browser/AutoFillSettingsFragment;->updateSaveMenuItemState()V

    move v1, v12

    .line 177
    goto :goto_0

    .line 180
    :pswitch_1
    new-instance v0, Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    iget v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mUniqueId:I

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v0, "newProfile":Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSettings:Lcom/android/browser/BrowserSettings;

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/BrowserSettings;->setAutoFillProfile(Landroid/webkit/WebSettingsClassic$AutoFillProfile;Landroid/os/Message;)V

    move v1, v12

    .line 195
    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x7f0d0096
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
