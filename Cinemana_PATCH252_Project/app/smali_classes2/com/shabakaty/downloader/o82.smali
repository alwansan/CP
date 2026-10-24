.class public final Lcom/shabakaty/downloader/o82;
.super Ljava/lang/Object;
.source "typeQualifiers.kt"


# static fields
.field public static final e:Lcom/shabakaty/downloader/o82;

.field public static final f:Lcom/shabakaty/downloader/o82;


# instance fields
.field public final a:Lcom/shabakaty/downloader/u13;

.field public final b:Lcom/shabakaty/downloader/uv2;

.field public final c:Z

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lcom/shabakaty/downloader/o82;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/o82;-><init>(Lcom/shabakaty/downloader/u13;Lcom/shabakaty/downloader/uv2;ZZI)V

    sput-object v6, Lcom/shabakaty/downloader/o82;->f:Lcom/shabakaty/downloader/o82;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u13;Lcom/shabakaty/downloader/uv2;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/o82;->a:Lcom/shabakaty/downloader/u13;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/o82;->b:Lcom/shabakaty/downloader/uv2;

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/o82;->c:Z

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/downloader/o82;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u13;Lcom/shabakaty/downloader/uv2;ZZI)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/o82;->a:Lcom/shabakaty/downloader/u13;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/o82;->b:Lcom/shabakaty/downloader/uv2;

    .line 9
    iput-boolean p3, p0, Lcom/shabakaty/downloader/o82;->c:Z

    .line 10
    iput-boolean p4, p0, Lcom/shabakaty/downloader/o82;->d:Z

    return-void
.end method
