.class public Lcom/android/bluetooth/map/BluetoothMapAccountLoader;
.super Ljava/lang/Object;
.source "BluetoothMapAccountLoader.java"


# static fields
.field private static final D:Z

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAccountLoader"

.field private static final V:Z


# instance fields
.field private mAccountsEnabledCount:I

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    .line 42
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mContext:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    .line 47
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 51
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public createAppItem(Landroid/content/pm/ResolveInfo;ZLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 7

    .line 131
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    if-eqz v4, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - meta-data(provider = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BluetoothMapAccountLoader"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 141
    if-nez p2, :cond_1

    move-object v5, v0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v5, p1

    .line 140
    :goto_0
    const-string v1, "0"

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object p1

    .line 143
    return-object p1

    .line 146
    :cond_2
    return-object v0
.end method

.method public getAccountsEnabledCount()I
    .locals 2

    .line 246
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled Accounts count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapAccountLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    return v0
.end method

.method public parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation

    .line 155
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 156
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    const-string v3, "BluetoothMapAccountLoader"

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finding accounts for app "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mResolver:Landroid/content/ContentResolver;

    .line 163
    :try_start_0
    iget-object v5, v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    .line 164
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 163
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 165
    if-eqz v0, :cond_b

    .line 168
    const-wide/16 v5, 0x4e20

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Account"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v5, :cond_1

    .line 174
    iget-object v5, v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v7, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_IM_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "_id DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v5, v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v7, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "_id DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :goto_0
    iget-object v5, v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v5, :cond_2

    .line 188
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    .line 192
    :cond_2
    if-eqz v0, :cond_9

    .line 193
    const/4 v5, -0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 194
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 195
    nop

    .line 196
    const-string v6, "account_display_name"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 197
    const-string v7, "flag_expose"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 198
    const-string v8, "account_uci"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 199
    nop

    .line 200
    const-string v9, "account_uci_PREFIX"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 201
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 202
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    if-eqz v10, :cond_3

    .line 203
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding account "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " with ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 203
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_3
    nop

    .line 207
    nop

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v10

    sget-object v11, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/4 v12, 0x0

    if-ne v10, v11, :cond_5

    .line 209
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 210
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 211
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    if-eqz v11, :cond_4

    .line 212
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "   Account UCI "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_4
    move-object/from16 v20, v10

    move-object/from16 v19, v12

    goto :goto_2

    .line 208
    :cond_5
    move-object/from16 v19, v12

    move-object/from16 v20, v19

    .line 216
    :goto_2
    nop

    .line 217
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 218
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v18

    .line 217
    invoke-static/range {v13 .. v20}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v10

    .line 221
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_6

    move v11, v12

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    iput-boolean v11, v10, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 222
    iput-boolean v12, v10, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 225
    iget-boolean v11, v10, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v11, :cond_7

    .line 226
    iget v11, v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    add-int/2addr v11, v12

    iput v11, v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    .line 228
    :cond_7
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    goto/16 :goto_1

    .line 230
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 231
    goto :goto_4

    .line 232
    :cond_9
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    if-eqz v0, :cond_a

    .line 233
    const-string v0, "query failed"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_a
    :goto_4
    return-object v4

    .line 166
    :cond_b
    :try_start_1
    new-instance v0, Landroid/os/RemoteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to acquire provider for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 180
    :catch_0
    move-exception v0

    .line 181
    :try_start_2
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    if-eqz v0, :cond_c

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not establish ContentProviderClient for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - returning empty account list"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :cond_c
    nop

    .line 187
    iget-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_d

    .line 188
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 185
    :cond_d
    return-object v4

    .line 187
    :goto_5
    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_e

    .line 188
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 190
    :cond_e
    throw v0
.end method

.method public parsePackages(Z)Ljava/util/LinkedHashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedHashMap<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/content/Intent;

    .line 68
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.bluetooth.action.BLUETOOTH_MAP_PROVIDER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 69
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.action.BLUETOOTH_MAP_IM_PROVIDER"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v3, v2, v6

    .line 71
    iput v5, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mAccountsEnabledCount:I

    .line 75
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 77
    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_b

    aget-object v7, v2, v3

    .line 78
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 79
    invoke-virtual {v8, v7, v5}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 80
    const-string v9, "BluetoothMapAccountLoader"

    if-eqz v8, :cond_9

    .line 81
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    if-eqz v10, :cond_0

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " application(s) with intent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 82
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 87
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 88
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 89
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    if-eqz v11, :cond_2

    .line 90
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ResolveInfo "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v12, 0x200000

    and-int/2addr v11, v12

    if-nez v11, :cond_6

    .line 96
    invoke-virtual {p0, v10, p1, v7}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->createAppItem(Landroid/content/pm/ResolveInfo;ZLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v10

    .line 97
    if-eqz v10, :cond_5

    .line 98
    invoke-virtual {p0, v10}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v11

    .line 100
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 103
    iput-boolean v6, v10, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 104
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 105
    iget-boolean v13, v13, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-nez v13, :cond_3

    .line 106
    iput-boolean v5, v10, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    .line 107
    goto :goto_4

    .line 109
    :cond_3
    goto :goto_3

    .line 110
    :cond_4
    :goto_4
    invoke-virtual {v0, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_5
    goto :goto_5

    .line 114
    :cond_6
    sget-boolean v11, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    if-eqz v11, :cond_7

    .line 115
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring force-stopped authority "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_7
    :goto_5
    goto/16 :goto_2

    .line 120
    :cond_8
    goto :goto_6

    .line 121
    :cond_9
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->D:Z

    if-eqz v7, :cond_a

    .line 122
    const-string v7, "Found no applications"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 126
    :cond_b
    return-object v0
.end method
