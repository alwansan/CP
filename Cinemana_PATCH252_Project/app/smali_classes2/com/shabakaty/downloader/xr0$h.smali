.class public final synthetic Lcom/shabakaty/downloader/xr0$h;
.super Lcom/shabakaty/downloader/bo1;
.source "DeserializedClassDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xr0;-><init>(Lcom/shabakaty/downloader/rr0;Lcom/shabakaty/downloader/ji3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/s94;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/bo1;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ve2;",
        "Lcom/shabakaty/downloader/xr0$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/shabakaty/downloader/bo1;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>"

    return-object v0
.end method

.method public final getOwner()Lcom/shabakaty/downloader/nc2;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/xr0$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V"

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ve2;

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/xr0$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/uq;->receiver:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/xr0;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/xr0$a;-><init>(Lcom/shabakaty/downloader/xr0;Lcom/shabakaty/downloader/ve2;)V

    return-object v0
.end method
