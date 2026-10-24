.class public final enum Lcom/shabakaty/downloader/ai6;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/l37;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/ai6;",
        ">;",
        "Lcom/shabakaty/downloader/l37;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/ai6;

.field public static final enum t:Lcom/shabakaty/downloader/ai6;

.field public static final synthetic u:[Lcom/shabakaty/downloader/ai6;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ai6;

    const-string v1, "APP_SESSION_REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ai6;

    const-string v3, "APP_SESSION_REASON_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/ai6;->s:Lcom/shabakaty/downloader/ai6;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/ai6;

    const-string v5, "APP_SESSION_NETWORK_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/ai6;

    const-string v7, "APP_SESSION_NETWORK_RECOVERED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/ai6;

    const-string v9, "APP_SESSION_RECEIVER_CONNECTION_LOSS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/ai6;

    const-string v11, "APP_SESSION_RECEIVER_CONNECTION_RECOVERED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/ai6;

    const-string v13, "APP_SESSION_APP_BACKGROUNDED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 8
    new-instance v13, Lcom/shabakaty/downloader/ai6;

    const-string v15, "APP_SESSION_APP_FOREGROUNDED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 9
    new-instance v15, Lcom/shabakaty/downloader/ai6;

    const-string v14, "APP_SESSION_APP_STOPPED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 10
    new-instance v14, Lcom/shabakaty/downloader/ai6;

    const-string v12, "APP_SESSION_CASTING_STOPPED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/shabakaty/downloader/ai6;->t:Lcom/shabakaty/downloader/ai6;

    .line 11
    new-instance v12, Lcom/shabakaty/downloader/ai6;

    const-string v10, "APP_SESSION_RESUMED_FROM_SAVED_SESSION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 12
    new-instance v10, Lcom/shabakaty/downloader/ai6;

    const-string v8, "APP_SESSION_RESUMED_FROM_OPEN_URL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 13
    new-instance v8, Lcom/shabakaty/downloader/ai6;

    const-string v6, "APP_SESSION_NETWORK_NOT_REACHABLE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 14
    new-instance v6, Lcom/shabakaty/downloader/ai6;

    const-string v4, "APP_SESSION_GMSCORE_SERVICE_DISCONNECTED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 15
    new-instance v4, Lcom/shabakaty/downloader/ai6;

    const-string v2, "APP_SESSION_ENDPOINT_SWITCHED"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    .line 16
    new-instance v2, Lcom/shabakaty/downloader/ai6;

    const-string v6, "APP_SESSION_DEVICE_CONNECTION_SUSPENDED"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/shabakaty/downloader/ai6;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/shabakaty/downloader/ai6;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 17
    sput-object v6, Lcom/shabakaty/downloader/ai6;->u:[Lcom/shabakaty/downloader/ai6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shabakaty/downloader/ai6;->r:I

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/ai6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ai6;->u:[Lcom/shabakaty/downloader/ai6;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/ai6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/ai6;

    return-object v0
.end method


# virtual methods
.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ai6;->r:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/shabakaty/downloader/ai6;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/ai6;->r:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
