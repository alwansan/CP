.class public final Lcom/shabakaty/downloader/x94$c;
.super Lcom/shabakaty/downloader/af2;
.source "specialBuiltinMembers.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/x94;->c(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/tq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/tq;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/x94$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/x94$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/x94$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/x94$c;->r:Lcom/shabakaty/downloader/x94$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/zd2;->B(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/shabakaty/downloader/to;->m:Lcom/shabakaty/downloader/to;

    const-string v0, "<this>"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Lcom/shabakaty/downloader/z94;->f:Ljava/util/Set;

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 7
    :cond_0
    sget-object v3, Lcom/shabakaty/downloader/uo;->r:Lcom/shabakaty/downloader/uo;

    invoke-static {p1, v2, v3, v1}, Lcom/shabakaty/downloader/hr0;->b(Lcom/shabakaty/downloader/tq;ZLcom/shabakaty/downloader/tm1;I)Lcom/shabakaty/downloader/tq;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v4

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->e(Lcom/shabakaty/downloader/rq;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    goto :goto_4

    :cond_2
    const-string v3, "builtinSignature"

    .line 8
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v3, Lcom/shabakaty/downloader/z94;->c:Ljava/util/List;

    .line 10
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object p1, Lcom/shabakaty/downloader/z94$b;->r:Lcom/shabakaty/downloader/z94$b;

    :goto_1
    move-object v4, p1

    goto :goto_4

    .line 11
    :cond_3
    sget-object v3, Lcom/shabakaty/downloader/z94;->e:Ljava/util/Map;

    .line 12
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    instance-of v0, v3, Lcom/shabakaty/downloader/pm2;

    if-eqz v0, :cond_4

    .line 15
    check-cast v3, Lcom/shabakaty/downloader/pm2;

    invoke-interface {v3, p1}, Lcom/shabakaty/downloader/pm2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 16
    :cond_4
    move-object v0, v3

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 17
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is missing in the map."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    move-object p1, v0

    .line 19
    :goto_3
    check-cast p1, Lcom/shabakaty/downloader/z94$c;

    .line 20
    sget-object v0, Lcom/shabakaty/downloader/z94$c;->s:Lcom/shabakaty/downloader/z94$c;

    if-ne p1, v0, :cond_7

    .line 21
    sget-object p1, Lcom/shabakaty/downloader/z94$b;->t:Lcom/shabakaty/downloader/z94$b;

    goto :goto_1

    .line 22
    :cond_7
    sget-object p1, Lcom/shabakaty/downloader/z94$b;->s:Lcom/shabakaty/downloader/z94$b;

    goto :goto_1

    :goto_4
    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    .line 23
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
