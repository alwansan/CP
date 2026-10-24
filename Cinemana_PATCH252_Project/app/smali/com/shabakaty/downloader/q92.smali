.class public final Lcom/shabakaty/downloader/q92;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/xr4;


# instance fields
.field public final r:Lcom/shabakaty/downloader/nc0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nc0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/q92;->r:Lcom/shabakaty/downloader/nc0;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/lr1;",
            "Lcom/shabakaty/downloader/cu4<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/wr4<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/cu4;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lcom/shabakaty/downloader/p92;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/p92;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/q92;->r:Lcom/shabakaty/downloader/nc0;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/shabakaty/downloader/q92;->b(Lcom/shabakaty/downloader/nc0;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;Lcom/shabakaty/downloader/p92;)Lcom/shabakaty/downloader/wr4;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/nc0;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;Lcom/shabakaty/downloader/p92;)Lcom/shabakaty/downloader/wr4;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nc0;",
            "Lcom/shabakaty/downloader/lr1;",
            "Lcom/shabakaty/downloader/cu4<",
            "*>;",
            "Lcom/shabakaty/downloader/p92;",
            ")",
            "Lcom/shabakaty/downloader/wr4<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lcom/shabakaty/downloader/p92;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/Class;)Lcom/shabakaty/downloader/cu4;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/nc0;->a(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/k43;

    move-result-object p1

    invoke-interface {p1}, Lcom/shabakaty/downloader/k43;->a()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/wr4;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/wr4;

    goto :goto_2

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/xr4;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/xr4;

    invoke-interface {p1, p2, p3}, Lcom/shabakaty/downloader/xr4;->a(Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object p1

    goto :goto_2

    .line 6
    :cond_1
    instance-of v0, p1, Lcom/shabakaty/downloader/ia2;

    if-nez v0, :cond_3

    instance-of v1, p1, Lcom/shabakaty/downloader/y92;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p4, "Invalid attempt to bind an instance of "

    invoke-static {p4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/shabakaty/downloader/cu4;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/ia2;

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 10
    :goto_1
    instance-of v0, p1, Lcom/shabakaty/downloader/y92;

    if-eqz v0, :cond_5

    .line 11
    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/y92;

    :cond_5
    move-object v4, v1

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/dr4;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/dr4;-><init>(Lcom/shabakaty/downloader/ia2;Lcom/shabakaty/downloader/y92;Lcom/shabakaty/downloader/lr1;Lcom/shabakaty/downloader/cu4;Lcom/shabakaty/downloader/xr4;)V

    :goto_2
    if-eqz p1, :cond_6

    .line 13
    invoke-interface {p4}, Lcom/shabakaty/downloader/p92;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/vr4;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/vr4;-><init>(Lcom/shabakaty/downloader/wr4;)V

    move-object p1, p2

    :cond_6
    return-object p1
.end method
