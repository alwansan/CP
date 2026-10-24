.class public abstract Lcom/shabakaty/downloader/om3;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/om3$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/om3$a;

.field public static final s:Lcom/shabakaty/downloader/om3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/om3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/om3$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/om3;->r:Lcom/shabakaty/downloader/om3$a;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/sc3;->a:Lcom/shabakaty/downloader/rc3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/rc3;->b()Lcom/shabakaty/downloader/om3;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/om3;->s:Lcom/shabakaty/downloader/om3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method
