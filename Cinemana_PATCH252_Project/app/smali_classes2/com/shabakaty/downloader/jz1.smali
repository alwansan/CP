.class public abstract Lcom/shabakaty/downloader/jz1;
.super Ljava/lang/Object;
.source "ImageStreamItems.java"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lcom/shabakaty/downloader/tp2;

.field public d:Z


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/tp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/jz1;->a:I

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/jz1;->c:Lcom/shabakaty/downloader/tp2;

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->hashCode()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/jz1;->b:J

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/jz1;->d:Z

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method
