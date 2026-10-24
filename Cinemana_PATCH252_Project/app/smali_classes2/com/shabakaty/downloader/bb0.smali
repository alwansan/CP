.class public final enum Lcom/shabakaty/downloader/bb0;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/bb0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/bb0;

.field public static final enum t:Lcom/shabakaty/downloader/bb0;

.field public static final synthetic u:[Lcom/shabakaty/downloader/bb0;


# instance fields
.field public final r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bb0;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/bb0;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/shabakaty/downloader/bb0;->s:Lcom/shabakaty/downloader/bb0;

    new-instance v1, Lcom/shabakaty/downloader/bb0;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/bb0;-><init>(Ljava/lang/String;IZ)V

    new-instance v3, Lcom/shabakaty/downloader/bb0;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/shabakaty/downloader/bb0;-><init>(Ljava/lang/String;IZ)V

    new-instance v5, Lcom/shabakaty/downloader/bb0;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/shabakaty/downloader/bb0;-><init>(Ljava/lang/String;IZ)V

    new-instance v7, Lcom/shabakaty/downloader/bb0;

    const-string v9, "PATCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/shabakaty/downloader/bb0;-><init>(Ljava/lang/String;IZ)V

    new-instance v9, Lcom/shabakaty/downloader/bb0;

    const-string v11, "HEAD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lcom/shabakaty/downloader/bb0;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/shabakaty/downloader/bb0;->t:Lcom/shabakaty/downloader/bb0;

    new-instance v11, Lcom/shabakaty/downloader/bb0;

    const-string v13, "OPTIONS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2}, Lcom/shabakaty/downloader/bb0;-><init>(Ljava/lang/String;IZ)V

    new-instance v13, Lcom/shabakaty/downloader/bb0;

    const-string v15, "TRACE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v2}, Lcom/shabakaty/downloader/bb0;-><init>(Ljava/lang/String;IZ)V

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/shabakaty/downloader/bb0;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 2
    sput-object v15, Lcom/shabakaty/downloader/bb0;->u:[Lcom/shabakaty/downloader/bb0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/shabakaty/downloader/bb0;->r:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/bb0;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/bb0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/bb0;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/bb0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/bb0;->u:[Lcom/shabakaty/downloader/bb0;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/bb0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/bb0;

    return-object v0
.end method
