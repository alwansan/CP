.class public Lcom/shabakaty/downloader/p$a;
.super Ljava/lang/Object;
.source "AbstractClassDescriptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/p;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/hw2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/p;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/p$a;->r:Lcom/shabakaty/downloader/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p$a;->r:Lcom/shabakaty/downloader/p;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/p;->M0()Lcom/shabakaty/downloader/mr2;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/downloader/o;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/o;-><init>(Lcom/shabakaty/downloader/p$a;)V

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/eu4;->o(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method
