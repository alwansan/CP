.class public final Lcom/shabakaty/downloader/gc0$a;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gc0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/work/c;

.field public b:Z

.field public c:Z

.field public d:Lcom/shabakaty/downloader/id0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/work/c;->r:Landroidx/work/c;

    iput-object v0, p0, Lcom/shabakaty/downloader/gc0$a;->a:Landroidx/work/c;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/gc0$a;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/gc0$a;->c:Z

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/id0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/id0;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/gc0$a;->d:Lcom/shabakaty/downloader/id0;

    return-void
.end method
