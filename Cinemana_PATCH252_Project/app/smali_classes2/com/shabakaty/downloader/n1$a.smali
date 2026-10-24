.class public Lcom/shabakaty/downloader/n1$a;
.super Ljava/lang/Object;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/n1;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/xz4;ZILcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/ph4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/ts4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/md4;

.field public final synthetic s:Lcom/shabakaty/downloader/ph4;

.field public final synthetic t:Lcom/shabakaty/downloader/n1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ph4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/n1$a;->t:Lcom/shabakaty/downloader/n1;

    iput-object p2, p0, Lcom/shabakaty/downloader/n1$a;->r:Lcom/shabakaty/downloader/md4;

    iput-object p3, p0, Lcom/shabakaty/downloader/n1$a;->s:Lcom/shabakaty/downloader/ph4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/n1$c;

    iget-object v1, p0, Lcom/shabakaty/downloader/n1$a;->t:Lcom/shabakaty/downloader/n1;

    iget-object v2, p0, Lcom/shabakaty/downloader/n1$a;->r:Lcom/shabakaty/downloader/md4;

    iget-object v3, p0, Lcom/shabakaty/downloader/n1$a;->s:Lcom/shabakaty/downloader/ph4;

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/n1$c;-><init>(Lcom/shabakaty/downloader/n1;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ph4;)V

    return-object v0
.end method
