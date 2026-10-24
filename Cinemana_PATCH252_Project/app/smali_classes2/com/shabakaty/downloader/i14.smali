.class public Lcom/shabakaty/downloader/i14;
.super Lcom/shabakaty/downloader/h14;
.source "ServiceEventImpl.java"


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Lcom/shabakaty/downloader/j14;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/j14;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/h14;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/i14;->r:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/i14;->s:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/i14;->t:Lcom/shabakaty/downloader/j14;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/shabakaty/downloader/h14;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/i14;->g()Lcom/shabakaty/downloader/i14;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/b92;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b92;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/j14;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i14;->t:Lcom/shabakaty/downloader/j14;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/i14;->g()Lcom/shabakaty/downloader/i14;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i14;->s:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i14;->r:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/shabakaty/downloader/i14;
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/k14;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/i14;->t:Lcom/shabakaty/downloader/j14;

    .line 3
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/k14;-><init>(Lcom/shabakaty/downloader/j14;)V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/i14;

    .line 5
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/b92;

    .line 6
    check-cast v2, Lcom/shabakaty/downloader/d92;

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/i14;->r:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/shabakaty/downloader/i14;->s:Ljava/lang/String;

    .line 9
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/shabakaty/downloader/i14;-><init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/j14;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/shabakaty/downloader/i14;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tname: \'"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/i14;->s:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' type: \'"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/i14;->r:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' info: \'"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/i14;->t:Lcom/shabakaty/downloader/j14;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\']"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
