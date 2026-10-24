.class public final Lcom/shabakaty/downloader/tb2$d;
.super Lcom/shabakaty/downloader/tb2;
.source "RuntimeTypeMapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tb2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/mb2$e;

.field public final b:Lcom/shabakaty/downloader/mb2$e;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mb2$e;Lcom/shabakaty/downloader/mb2$e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/tb2;-><init>(Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tb2$d;->a:Lcom/shabakaty/downloader/mb2$e;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/tb2$d;->b:Lcom/shabakaty/downloader/mb2$e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tb2$d;->a:Lcom/shabakaty/downloader/mb2$e;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/mb2$e;->b:Ljava/lang/String;

    return-object v0
.end method
