.class public abstract Lcom/shabakaty/downloader/ws4;
.super Lcom/shabakaty/downloader/tt4;
.source "TypeSubstitution.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ws4$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/ws4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/ws4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ws4$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/ws4;->b:Lcom/shabakaty/downloader/ws4$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/tt4;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qt4;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ws4;->g(Lcom/shabakaty/downloader/ts4;)Lcom/shabakaty/downloader/qt4;

    move-result-object p1

    return-object p1
.end method

.method public abstract g(Lcom/shabakaty/downloader/ts4;)Lcom/shabakaty/downloader/qt4;
.end method
