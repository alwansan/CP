.class public Lcom/shabakaty/downloader/p$c;
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
        "Lcom/shabakaty/downloader/ao3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/p;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/p$c;->r:Lcom/shabakaty/downloader/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/mf2;

    iget-object v1, p0, Lcom/shabakaty/downloader/p$c;->r:Lcom/shabakaty/downloader/p;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/mf2;-><init>(Lcom/shabakaty/downloader/q20;)V

    return-object v0
.end method
