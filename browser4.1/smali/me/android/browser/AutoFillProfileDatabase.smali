.class public Lme/android/browser/AutoFillProfileDatabase;
.super Ljava/lang/Object;
.source "AutoFillProfileDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;,
        Lme/android/browser/AutoFillProfileDatabase$Profiles;
    }
.end annotation


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "autofill.db"

.field static final DATABASE_VERSION:I = 0x2

.field static final LOGTAG:Ljava/lang/String; = "AutoFillProfileDatabase"

.field static final PROFILES_TABLE_NAME:Ljava/lang/String; = "profiles"

.field private static sInstance:Lme/android/browser/AutoFillProfileDatabase;


# instance fields
.field private mOpenHelper:Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;

    invoke-direct {v0, p1}, Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/android/browser/AutoFillProfileDatabase;->mOpenHelper:Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;

    .line 85
    return-void
.end method

.method private getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "writable"    # Z

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget-object v0, p0, Lme/android/browser/AutoFillProfileDatabase;->mOpenHelper:Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;

    invoke-virtual {v0}, Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/android/browser/AutoFillProfileDatabase;->mOpenHelper:Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;

    invoke-virtual {v0}, Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lme/android/browser/AutoFillProfileDatabase;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v0, Lme/android/browser/AutoFillProfileDatabase;->sInstance:Lme/android/browser/AutoFillProfileDatabase;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lme/android/browser/AutoFillProfileDatabase;

    invoke-direct {v0, p0}, Lme/android/browser/AutoFillProfileDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lme/android/browser/AutoFillProfileDatabase;->sInstance:Lme/android/browser/AutoFillProfileDatabase;

    .line 91
    :cond_0
    sget-object v0, Lme/android/browser/AutoFillProfileDatabase;->sInstance:Lme/android/browser/AutoFillProfileDatabase;

    return-object v0
.end method


# virtual methods
.method public addOrUpdateProfile(ILandroid/webkit/WebSettingsClassic$AutoFillProfile;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "profile"    # Landroid/webkit/WebSettingsClassic$AutoFillProfile;

    .prologue
    const/4 v4, 0x1

    .line 99
    const-string v1, "INSERT OR REPLACE INTO profiles (_id,fullname,email,companyname,addressline1,addressline2,city,state,zipcode,country,phone) VALUES (?,?,?,?,?,?,?,?,?,?,?);"

    .line 112
    .local v1, "sql":Ljava/lang/String;
    const/16 v2, 0xb

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 113
    invoke-virtual {p2}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getFullName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x2

    .line 114
    invoke-virtual {p2}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 115
    invoke-virtual {p2}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 116
    invoke-virtual {p2}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getAddressLine1()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    .line 117
    invoke-virtual {p2}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getAddressLine2()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    .line 118
    invoke-virtual {p2}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getCity()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    .line 119
    invoke-virtual {p2}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getState()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    .line 120
    invoke-virtual {p2}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getZipCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x9

    .line 121
    invoke-virtual {p2}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getCountry()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xa

    .line 122
    invoke-virtual {p2}, Landroid/webkit/WebSettingsClassic$AutoFillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 123
    .local v0, "params":[Ljava/lang/Object;
    invoke-direct {p0, v4}, Lme/android/browser/AutoFillProfileDatabase;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "INSERT OR REPLACE INTO profiles (_id,fullname,email,companyname,addressline1,addressline2,city,state,zipcode,country,phone) VALUES (?,?,?,?,?,?,?,?,?,?,?);"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lme/android/browser/AutoFillProfileDatabase;->mOpenHelper:Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;

    invoke-virtual {v0}, Lme/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;->close()V

    .line 153
    return-void
.end method

.method public dropProfile(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    .line 146
    const-string v1, "DELETE FROM profiles WHERE _id = ?;"

    .line 147
    .local v1, "sql":Ljava/lang/String;
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 148
    .local v0, "params":[Ljava/lang/Object;
    invoke-direct {p0, v4}, Lme/android/browser/AutoFillProfileDatabase;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM profiles WHERE _id = ?;"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public getProfile(I)Landroid/database/Cursor;
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 127
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    .line 128
    const-string v0, "fullname"

    aput-object v0, v2, v3

    .line 129
    const-string v0, "email"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    .line 130
    const-string v1, "companyname"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 131
    const-string v1, "addressline1"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    .line 132
    const-string v1, "addressline2"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    .line 133
    const-string v1, "city"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    .line 134
    const-string v1, "state"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    .line 135
    const-string v1, "zipcode"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    .line 136
    const-string v1, "country"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    .line 137
    const-string v1, "phone"

    aput-object v1, v2, v0

    .line 140
    .local v2, "cols":[Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 141
    .local v4, "selectArgs":[Ljava/lang/String;
    invoke-direct {p0, v3}, Lme/android/browser/AutoFillProfileDatabase;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "profiles"

    const-string v3, "_id=?"

    .line 142
    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    .line 141
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
