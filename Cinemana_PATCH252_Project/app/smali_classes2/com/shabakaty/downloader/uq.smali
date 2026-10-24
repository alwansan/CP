.class public abstract Lcom/shabakaty/downloader/uq;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Lcom/shabakaty/downloader/zb2;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/uq$a;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field public final isTopLevel:Z

.field public final name:Ljava/lang/String;

.field public final owner:Ljava/lang/Class;

.field public final receiver:Ljava/lang/Object;

.field public transient reflected:Lcom/shabakaty/downloader/zb2;

.field public final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/uq$a;->r:Lcom/shabakaty/downloader/uq$a;

    sput-object v0, Lcom/shabakaty/downloader/uq;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/uq;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/uq;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/uq;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/shabakaty/downloader/uq;->owner:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Lcom/shabakaty/downloader/uq;->name:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/shabakaty/downloader/uq;->signature:Ljava/lang/String;

    .line 8
    iput-boolean p5, p0, Lcom/shabakaty/downloader/uq;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public compute()Lcom/shabakaty/downloader/zb2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->reflected:Lcom/shabakaty/downloader/zb2;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uq;->computeReflected()Lcom/shabakaty/downloader/zb2;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/uq;->reflected:Lcom/shabakaty/downloader/zb2;

    :cond_0
    return-object v0
.end method

.method public abstract computeReflected()Lcom/shabakaty/downloader/zb2;
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/shabakaty/downloader/nc2;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->owner:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/uq;->isTopLevel:Z

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/dq3;->a:Lcom/shabakaty/downloader/fq3;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/shabakaty/downloader/fq3;->c(Ljava/lang/Class;Ljava/lang/String;)Lcom/shabakaty/downloader/nc2;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getReflected()Lcom/shabakaty/downloader/zb2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/uq;->compute()Lcom/shabakaty/downloader/zb2;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ne2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ne2;-><init>()V

    throw v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/uq;->signature:Ljava/lang/String;

    return-object v0
.end method
