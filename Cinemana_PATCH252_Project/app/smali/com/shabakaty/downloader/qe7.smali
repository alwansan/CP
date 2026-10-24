.class public final Lcom/shabakaty/downloader/qe7;
.super Lcom/shabakaty/downloader/la7;
.source "com.google.mlkit:vision-common@@16.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/la7<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final v:Lcom/shabakaty/downloader/la7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/la7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient t:[Ljava/lang/Object;

.field public final transient u:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/qe7;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1
    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/qe7;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/shabakaty/downloader/qe7;->v:Lcom/shabakaty/downloader/la7;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/la7;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/qe7;->t:[Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/qe7;->u:I

    return-void
.end method


# virtual methods
.method public final d()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/qe7;->t:[Ljava/lang/Object;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/shabakaty/downloader/qe7;->u:I

    const-string v1, "index"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/ja6;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/shabakaty/downloader/qe7;->t:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/qe7;->u:I

    return v0
.end method

.method public final l([Ljava/lang/Object;I)I
    .locals 2

    iget-object p2, p0, Lcom/shabakaty/downloader/qe7;->t:[Ljava/lang/Object;

    iget v0, p0, Lcom/shabakaty/downloader/qe7;->u:I

    const/4 v1, 0x0

    .line 1
    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/shabakaty/downloader/qe7;->u:I

    return p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/qe7;->u:I

    return v0
.end method
