.class public final Lcom/shabakaty/downloader/mo0$b;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/fw1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/mo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/fw1$f;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/fw1$f;

    invoke-direct {v0}, Lcom/shabakaty/downloader/fw1$f;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/mo0$b;->a:Lcom/shabakaty/downloader/fw1$f;

    const/16 v0, 0x1f40

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/mo0$b;->c:I

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/mo0$b;->d:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/shabakaty/downloader/fw1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mo0$b;->b()Lcom/shabakaty/downloader/mo0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/vl0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mo0$b;->b()Lcom/shabakaty/downloader/mo0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/mo0;
    .locals 10

    .line 1
    new-instance v9, Lcom/shabakaty/downloader/mo0;

    iget-object v1, p0, Lcom/shabakaty/downloader/mo0$b;->b:Ljava/lang/String;

    iget v2, p0, Lcom/shabakaty/downloader/mo0$b;->c:I

    iget v3, p0, Lcom/shabakaty/downloader/mo0$b;->d:I

    iget-object v5, p0, Lcom/shabakaty/downloader/mo0$b;->a:Lcom/shabakaty/downloader/fw1$f;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/mo0;-><init>(Ljava/lang/String;IIZLcom/shabakaty/downloader/fw1$f;Lcom/shabakaty/downloader/ze3;ZLcom/shabakaty/downloader/mo0$a;)V

    return-object v9
.end method
