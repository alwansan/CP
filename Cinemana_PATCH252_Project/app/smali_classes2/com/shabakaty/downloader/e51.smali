.class public abstract Lcom/shabakaty/downloader/e51;
.super Lcom/shabakaty/downloader/qb0;
.source "constantValues.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/e51$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qb0<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/qb0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
