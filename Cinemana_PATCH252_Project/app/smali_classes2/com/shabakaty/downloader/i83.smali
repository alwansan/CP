.class public final Lcom/shabakaty/downloader/i83;
.super Lcom/shabakaty/downloader/f0;
.source "Options.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/i83$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/f0<",
        "Lcom/shabakaty/downloader/fp;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final t:Lcom/shabakaty/downloader/i83$a;


# instance fields
.field public final r:[Lcom/shabakaty/downloader/fp;

.field public final s:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/i83$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i83$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/i83;->t:Lcom/shabakaty/downloader/i83$a;

    return-void
.end method

.method public constructor <init>([Lcom/shabakaty/downloader/fp;[ILcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f0;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/i83;->r:[Lcom/shabakaty/downloader/fp;

    iput-object p2, p0, Lcom/shabakaty/downloader/i83;->s:[I

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/fp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/fp;

    .line 2
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/r;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i83;->r:[Lcom/shabakaty/downloader/fp;

    array-length v0, v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i83;->r:[Lcom/shabakaty/downloader/fp;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/fp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/fp;

    .line 2
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/f0;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/fp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/fp;

    .line 2
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/f0;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
