.class public final Lcom/shabakaty/downloader/s71$d;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/s71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/shabakaty/downloader/yc3;

.field public c:I

.field public d:Z

.field public e:I

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yc3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/s71$d;->b:Lcom/shabakaty/downloader/yc3;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/s71$d;->a:Z

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/shabakaty/downloader/s71$d;->a:Z

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/s71$d;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/shabakaty/downloader/s71$d;->c:I

    return-void
.end method
