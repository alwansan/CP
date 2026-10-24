.class public final enum Lcom/shabakaty/downloader/gt6;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/l37;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/gt6;",
        ">;",
        "Lcom/shabakaty/downloader/l37;"
    }
.end annotation


# static fields
.field public static final synthetic s:[Lcom/shabakaty/downloader/gt6;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gt6;

    const-string v1, "REMOTE_CONTROL_NOTIFICATION_FAILURE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/gt6;-><init>(Ljava/lang/String;II)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/gt6;

    const-string v3, "REMOTE_CONTROL_NOTIFICATION_FAILED_TO_CONNECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/gt6;-><init>(Ljava/lang/String;II)V

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/gt6;

    const-string v5, "REMOTE_CONTROL_NOTIFICATION_FAILED_TO_JOIN_APPLICATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/gt6;-><init>(Ljava/lang/String;II)V

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/gt6;

    const-string v7, "REMOTE_CONTROL_NOTIFICATION_RECEIVED_INVALID_DEVICE_STATUS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/gt6;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/gt6;

    const-string v9, "REMOTE_CONTROL_NOTIFICATION_RECEIVED_INVALID_MEDIA_STATUS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/shabakaty/downloader/gt6;-><init>(Ljava/lang/String;II)V

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/gt6;

    const-string v11, "REMOTE_CONTROL_NOTIFICATION_FAILED_TO_SET_MEDIA_NAMESPACE_CALLBACK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/shabakaty/downloader/gt6;-><init>(Ljava/lang/String;II)V

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/gt6;

    const-string v13, "REMOTE_CONTROL_NOTIFICATION_FAILED_TO_REQUEST_RECEIVER_STATUS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/shabakaty/downloader/gt6;-><init>(Ljava/lang/String;II)V

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/shabakaty/downloader/gt6;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/shabakaty/downloader/gt6;->s:[Lcom/shabakaty/downloader/gt6;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/zl2;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

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
    iput p3, p0, Lcom/shabakaty/downloader/gt6;->r:I

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/gt6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/gt6;->s:[Lcom/shabakaty/downloader/gt6;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/gt6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/gt6;

    return-object v0
.end method


# virtual methods
.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/gt6;->r:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/shabakaty/downloader/gt6;

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
    iget v1, p0, Lcom/shabakaty/downloader/gt6;->r:I

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
