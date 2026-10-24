.class public final Lcom/shabakaty/downloader/gd2$c;
.super Lcom/shabakaty/downloader/af2;
.source "KProperty1Impl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/gd2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/reflect/Member;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/gd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/gd2<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gd2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gd2<",
            "TT;+TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/gd2$c;->r:Lcom/shabakaty/downloader/gd2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gd2$c;->r:Lcom/shabakaty/downloader/gd2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->h()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method
