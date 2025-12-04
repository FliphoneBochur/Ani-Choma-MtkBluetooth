.class public Lcom/android/bluetooth/map/BluetoothMapAccountItem;
.super Ljava/lang/Object;
.source "BluetoothMapAccountItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAccountItem"

.field private static final V:Z


# instance fields
.field public final mBase_uri:Ljava/lang/String;

.field public final mBase_uri_no_account:Ljava/lang/String;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mId:Ljava/lang/String;

.field protected mIsChecked:Z

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mProviderAuthority:Ljava/lang/String;

.field private final mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private final mUci:Ljava/lang/String;

.field private final mUciPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->D:Z

    .line 30
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "content://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUci:Ljava/lang/String;

    .line 55
    iput-object p8, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUciPrefix:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 10

    .line 60
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    .locals 10

    .line 67
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)I
    .locals 5

    .line 99
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " vs "

    const-string v2, "BluetoothMapAccountItem"

    const/4 v3, -0x1

    if-nez v0, :cond_1

    .line 100
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong id : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return v3

    .line 105
    :cond_1
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong name : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    return v3

    .line 111
    :cond_3
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 112
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong packageName : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_4
    return v3

    .line 118
    :cond_5
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 119
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong providerName : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_6
    return v3

    .line 125
    :cond_7
    iget-boolean v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eq v0, v4, :cond_9

    .line 126
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_8

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong isChecked : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_8
    return v3

    .line 131
    :cond_9
    iget-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 132
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->V:Z

    if-eqz v0, :cond_a

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong appType : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_a
    return v3

    .line 137
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->compareTo(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 154
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 155
    return v0

    .line 157
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 158
    return v1

    .line 160
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 161
    return v1

    .line 163
    :cond_2
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 164
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 165
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 166
    return v1

    .line 168
    :cond_3
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 169
    return v1

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 172
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 173
    return v1

    .line 175
    :cond_5
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 176
    return v1

    .line 178
    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 179
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 180
    return v1

    .line 182
    :cond_7
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 183
    return v1

    .line 185
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 186
    iget-object v2, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 187
    return v1

    .line 189
    :cond_9
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 190
    return v1

    .line 192
    :cond_a
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-nez v2, :cond_b

    .line 193
    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz p1, :cond_c

    .line 194
    return v1

    .line 196
    :cond_b
    iget-object p1, p1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 197
    return v1

    .line 199
    :cond_c
    return v0
.end method

.method public getAccountId()J
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 75
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public getUci()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUci:Ljava/lang/String;

    return-object v0
.end method

.method public getUciFull()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUci:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    return-object v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUciPrefix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 91
    return-object v1

    .line 93
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUci:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUciPrefix()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mUciPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 143
    nop

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    .line 145
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 146
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    .line 147
    mul-int/2addr v0, v2

    .line 148
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mProviderAuthority:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    .line 149
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
