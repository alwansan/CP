.class public final enum Lcom/shabakaty/downloader/y27;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/y27;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/y27;

.field public static final enum s:Lcom/shabakaty/downloader/y27;

.field public static final enum t:Lcom/shabakaty/downloader/y27;

.field public static final enum u:Lcom/shabakaty/downloader/y27;

.field public static final synthetic v:[Lcom/shabakaty/downloader/y27;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/y27;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/y27;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/shabakaty/downloader/y27;->r:Lcom/shabakaty/downloader/y27;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/y27;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/y27;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/shabakaty/downloader/y27;->s:Lcom/shabakaty/downloader/y27;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/y27;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/shabakaty/downloader/y27;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/shabakaty/downloader/y27;->t:Lcom/shabakaty/downloader/y27;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/y27;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/shabakaty/downloader/y27;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/shabakaty/downloader/y27;->u:Lcom/shabakaty/downloader/y27;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shabakaty/downloader/y27;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/shabakaty/downloader/y27;->v:[Lcom/shabakaty/downloader/y27;

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

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/y27;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/y27;->v:[Lcom/shabakaty/downloader/y27;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/y27;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/y27;

    return-object v0
.end method
