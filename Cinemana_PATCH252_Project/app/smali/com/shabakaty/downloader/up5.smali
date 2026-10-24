.class public final enum Lcom/shabakaty/downloader/up5;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/up5;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/up5;

.field public static final enum s:Lcom/shabakaty/downloader/up5;

.field public static final synthetic t:[Lcom/shabakaty/downloader/up5;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/up5;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/up5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/up5;->r:Lcom/shabakaty/downloader/up5;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/up5;

    const-string v3, "GZIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/up5;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/up5;->s:Lcom/shabakaty/downloader/up5;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shabakaty/downloader/up5;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/shabakaty/downloader/up5;->t:[Lcom/shabakaty/downloader/up5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/up5;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/up5;->t:[Lcom/shabakaty/downloader/up5;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/up5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/up5;

    return-object v0
.end method
