.class public final Lcom/shabakaty/downloader/bg1;
.super Lcom/shabakaty/downloader/qf1;
.source "FlowableEmpty.java"

# interfaces
.implements Lcom/shabakaty/downloader/hx3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qf1<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/shabakaty/downloader/hx3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final s:Lcom/shabakaty/downloader/qf1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/qf1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/bg1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/bg1;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/bg1;->s:Lcom/shabakaty/downloader/qf1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e31;->r:Lcom/shabakaty/downloader/e31;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void
.end method
