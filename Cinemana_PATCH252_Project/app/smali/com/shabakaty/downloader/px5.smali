.class public final Lcom/shabakaty/downloader/px5;
.super Lcom/shabakaty/downloader/iu5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/iu5<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final v:Lcom/shabakaty/downloader/iu5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/iu5<",
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

    new-instance v0, Lcom/shabakaty/downloader/px5;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1
    invoke-direct {v0, v2, v1}, Lcom/shabakaty/downloader/px5;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/shabakaty/downloader/px5;->v:Lcom/shabakaty/downloader/iu5;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/iu5;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/px5;->t:[Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/px5;->u:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/shabakaty/downloader/px5;->u:I

    const-string v1, "index"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/oj5;->c(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/shabakaty/downloader/px5;->t:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final h()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/px5;->t:[Ljava/lang/Object;

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/px5;->u:I

    return v0
.end method

.method public final m([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/px5;->t:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/px5;->u:I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/shabakaty/downloader/px5;->u:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/px5;->u:I

    return v0
.end method
