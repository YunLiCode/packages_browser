.class Lme/android/browser/AutofillHandler$LoadFromDb;
.super Ljava/lang/Thread;
.source "AutofillHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/android/browser/AutofillHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFromDb"
.end annotation


# instance fields
.field final synthetic this$0:Lme/android/browser/AutofillHandler;


# direct methods
.method private constructor <init>(Lme/android/browser/AutofillHandler;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/android/browser/AutofillHandler;Lme/android/browser/AutofillHandler$LoadFromDb;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lme/android/browser/AutofillHandler$LoadFromDb;-><init>(Lme/android/browser/AutofillHandler;)V

    return-void
.end method

.method private getContactField(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 177
    const/4 v7, 0x0

    .line 179
    .local v7, "result":Ljava/lang/String;
    iget-object v0, p0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lme/android/browser/AutofillHandler;->access$0(Lme/android/browser/AutofillHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v1

    .line 180
    const-string v3, "mimetype=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v1

    move-object v1, p1

    .line 179
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 182
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 194
    :goto_0
    return-object v5

    .line 188
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 192
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    .line 194
    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lme/android/browser/AutofillHandler;->access$0(Lme/android/browser/AutofillHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 88
    .local v28, "p":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    .line 89
    const-string v3, "autofill_active_profile_id"

    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v14}, Lme/android/browser/AutofillHandler;->access$1(Lme/android/browser/AutofillHandler;)I

    move-result v14

    .line 88
    move-object/from16 v0, v28

    invoke-interface {v0, v3, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lme/android/browser/AutofillHandler;->access$2(Lme/android/browser/AutofillHandler;I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lme/android/browser/AutofillHandler;->access$0(Lme/android/browser/AutofillHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lme/android/browser/AutoFillProfileDatabase;->getInstance(Landroid/content/Context;)Lme/android/browser/AutoFillProfileDatabase;

    move-result-object v26

    .line 98
    .local v26, "autoFillDb":Lme/android/browser/AutoFillProfileDatabase;
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v2}, Lme/android/browser/AutofillHandler;->access$1(Lme/android/browser/AutofillHandler;)I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lme/android/browser/AutoFillProfileDatabase;->getProfile(I)Landroid/database/Cursor;

    move-result-object v27

    .line 100
    .local v27, "c":Landroid/database/Cursor;
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 101
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    const-string v2, "fullname"

    .line 103
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "fullName":Ljava/lang/String;
    const-string v2, "email"

    .line 105
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "email":Ljava/lang/String;
    const-string v2, "companyname"

    .line 107
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "company":Ljava/lang/String;
    const-string v2, "addressline1"

    .line 109
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "addressLine1":Ljava/lang/String;
    const-string v2, "addressline2"

    .line 111
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "addressLine2":Ljava/lang/String;
    const-string v2, "city"

    .line 113
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "city":Ljava/lang/String;
    const-string v2, "state"

    .line 115
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "state":Ljava/lang/String;
    const-string v2, "zipcode"

    .line 117
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 120
    .local v11, "zip":Ljava/lang/String;
    const-string v2, "country"

    .line 119
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 122
    .local v12, "country":Ljava/lang/String;
    const-string v2, "phone"

    .line 121
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 123
    .local v13, "phone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    new-instance v2, Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mAutoFillActiveProfileId:I
    invoke-static {v3}, Lme/android/browser/AutofillHandler;->access$1(Lme/android/browser/AutofillHandler;)I

    move-result v3

    .line 125
    invoke-direct/range {v2 .. v13}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {v14, v2}, Lme/android/browser/AutofillHandler;->access$3(Lme/android/browser/AutofillHandler;Landroid/webkit/WebSettingsClassic$AutoFillProfile;)V

    .line 127
    .end local v4    # "fullName":Ljava/lang/String;
    .end local v5    # "email":Ljava/lang/String;
    .end local v6    # "company":Ljava/lang/String;
    .end local v7    # "addressLine1":Ljava/lang/String;
    .end local v8    # "addressLine2":Ljava/lang/String;
    .end local v9    # "city":Ljava/lang/String;
    .end local v10    # "state":Ljava/lang/String;
    .end local v11    # "zip":Ljava/lang/String;
    .end local v12    # "country":Ljava/lang/String;
    .end local v13    # "phone":Ljava/lang/String;
    :cond_0
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 128
    invoke-virtual/range {v26 .. v26}, Lme/android/browser/AutoFillProfileDatabase;->close()V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mLoaded:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lme/android/browser/AutofillHandler;->access$4(Lme/android/browser/AutofillHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    invoke-static {v2}, Lme/android/browser/AutofillHandler;->access$5(Lme/android/browser/AutofillHandler;)Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    move-result-object v2

    if-nez v2, :cond_2

    .line 141
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 142
    const-string v3, "data"

    .line 141
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 144
    .local v29, "profileUri":Landroid/net/Uri;
    const-string v2, "data1"

    .line 145
    const-string v3, "vnd.android.cursor.item/name"

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v2, v3}, Lme/android/browser/AutofillHandler$LoadFromDb;->getContactField(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, "name":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 150
    const-string v2, "data1"

    .line 151
    const-string v3, "vnd.android.cursor.item/email_v2"

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v2, v3}, Lme/android/browser/AutofillHandler$LoadFromDb;->getContactField(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .restart local v5    # "email":Ljava/lang/String;
    const-string v2, "data1"

    .line 154
    const-string v3, "vnd.android.cursor.item/phone_v2"

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v2, v3}, Lme/android/browser/AutofillHandler$LoadFromDb;->getContactField(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 156
    .restart local v13    # "phone":Ljava/lang/String;
    const-string v2, "data1"

    .line 157
    const-string v3, "vnd.android.cursor.item/organization"

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v2, v3}, Lme/android/browser/AutofillHandler$LoadFromDb;->getContactField(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .restart local v6    # "company":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    monitor-enter v3

    .line 167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    # getter for: Lme/android/browser/AutofillHandler;->mAutoFillProfile:Landroid/webkit/WebSettingsClassic$AutoFillProfile;
    invoke-static {v2}, Lme/android/browser/AutofillHandler;->access$5(Lme/android/browser/AutofillHandler;)Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/android/browser/AutofillHandler$LoadFromDb;->this$0:Lme/android/browser/AutofillHandler;

    new-instance v14, Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    const/4 v15, 0x1

    .line 169
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v25, v13

    invoke-direct/range {v14 .. v25}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    .line 168
    invoke-virtual {v2, v14, v15}, Lme/android/browser/AutofillHandler;->setAutoFillProfile(Landroid/webkit/WebSettingsClassic$AutoFillProfile;Landroid/os/Message;)V

    .line 164
    :cond_1
    monitor-exit v3

    .line 174
    .end local v5    # "email":Ljava/lang/String;
    .end local v6    # "company":Ljava/lang/String;
    .end local v13    # "phone":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    .end local v29    # "profileUri":Landroid/net/Uri;
    :cond_2
    return-void

    .line 164
    .restart local v5    # "email":Ljava/lang/String;
    .restart local v6    # "company":Ljava/lang/String;
    .restart local v13    # "phone":Ljava/lang/String;
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v29    # "profileUri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
