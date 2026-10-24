.class public final Lcom/shabakaty/downloader/be$b;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements Lcom/shabakaty/downloader/be$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/shabakaty/downloader/ka3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zd$b;Lcom/shabakaty/downloader/wh1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    iput-object p1, p0, Lcom/shabakaty/downloader/be$b;->c:Lcom/shabakaty/downloader/ka3;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v0

    .line 5
    iget-object v1, p2, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget v1, p2, Lcom/shabakaty/downloader/wh1;->R:I

    iget p2, p2, Lcom/shabakaty/downloader/wh1;->P:I

    invoke-static {v1, p2}, Lcom/shabakaty/downloader/sy4;->x(II)I

    move-result p2

    if-eqz v0, :cond_0

    .line 7
    rem-int v1, v0, p2

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x58

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    const-string v3, ", stsz sample size: "

    .line 8
    invoke-static {v1, v2, p2, v3, v0}, Lcom/shabakaty/downloader/t74;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomParsers"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p2

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 10
    :cond_2
    iput v0, p0, Lcom/shabakaty/downloader/be$b;->a:I

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/be$b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/be$b;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/be$b;->b:I

    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/be$b;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/be$b;->c:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v0

    :cond_0
    return v0
.end method
