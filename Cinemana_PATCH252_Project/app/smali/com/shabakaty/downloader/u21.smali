.class public Lcom/shabakaty/downloader/u21;
.super Lcom/google/common/collect/q;
.source "EmptyImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/q<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final w:Lcom/shabakaty/downloader/u21;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/u21;

    invoke-direct {v0}, Lcom/shabakaty/downloader/u21;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/u21;->w:Lcom/shabakaty/downloader/u21;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/collect/c0;->x:Lcom/google/common/collect/r;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/q;-><init>(Lcom/google/common/collect/r;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/u21;->w:Lcom/shabakaty/downloader/u21;

    return-object v0
.end method
