.class public abstract Lcom/shabakaty/downloader/kd2$a;
.super Lcom/shabakaty/downloader/ac2;
.source "KPropertyImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/sc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/kd2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyType:",
        "Ljava/lang/Object;",
        "ReturnType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/ac2<",
        "TReturnType;>;",
        "Lcom/shabakaty/downloader/sc2<",
        "TReturnType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ac2;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/shabakaty/downloader/oc2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->g()Z

    move-result v0

    return v0
.end method

.method public abstract h()Lcom/shabakaty/downloader/vh3;
.end method

.method public abstract i()Lcom/shabakaty/downloader/kd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/kd2<",
            "TPropertyType;>;"
        }
    .end annotation
.end method
