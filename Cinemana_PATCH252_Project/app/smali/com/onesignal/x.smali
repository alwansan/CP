.class public Lcom/onesignal/x;
.super Lcom/shabakaty/downloader/zl2;
.source "OSInAppMessageController.java"

# interfaces
.implements Lcom/onesignal/t$a;
.implements Lcom/onesignal/l0$c;


# static fields
.field public static final M:Ljava/lang/Object;

.field public static N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/i23;",
            ">;"
        }
    .end annotation
.end field

.field public E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/i23;",
            ">;"
        }
    .end annotation
.end field

.field public F:Lcom/onesignal/a0;

.field public G:Z

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Z

.field public K:Ljava/util/Date;

.field public L:I

.field public final s:Lcom/shabakaty/downloader/b33;

.field public final t:Lcom/shabakaty/downloader/f43;

.field public final u:Lcom/shabakaty/downloader/ef2;

.field public v:Lcom/onesignal/l0;

.field public w:Lcom/shabakaty/downloader/t23;

.field public x:Lcom/onesignal/n0;

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/i23;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/x;->M:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/onesignal/x$e;

    invoke-direct {v0}, Lcom/onesignal/x$e;-><init>()V

    sput-object v0, Lcom/onesignal/x;->N:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/q73;Lcom/shabakaty/downloader/f43;Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/ef2;)V
    .locals 5

    const/16 v0, 0x12

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/onesignal/x;->E:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/onesignal/x;->F:Lcom/onesignal/a0;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/onesignal/x;->G:Z

    .line 5
    iput-object v0, p0, Lcom/onesignal/x;->H:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/onesignal/x;->I:Ljava/lang/String;

    .line 7
    iput-boolean v1, p0, Lcom/onesignal/x;->J:Z

    .line 8
    iput-object v0, p0, Lcom/onesignal/x;->K:Ljava/util/Date;

    .line 9
    iput v1, p0, Lcom/onesignal/x;->L:I

    .line 10
    iput-object p2, p0, Lcom/onesignal/x;->t:Lcom/shabakaty/downloader/f43;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/onesignal/x;->y:Ljava/util/ArrayList;

    .line 12
    invoke-static {}, Lcom/onesignal/o0;->s()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/onesignal/x;->z:Ljava/util/Set;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    .line 14
    invoke-static {}, Lcom/onesignal/o0;->s()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/onesignal/x;->A:Ljava/util/Set;

    .line 15
    invoke-static {}, Lcom/onesignal/o0;->s()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/x;->B:Ljava/util/Set;

    .line 16
    invoke-static {}, Lcom/onesignal/o0;->s()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/x;->C:Ljava/util/Set;

    .line 17
    new-instance v4, Lcom/onesignal/n0;

    invoke-direct {v4, p0}, Lcom/onesignal/n0;-><init>(Lcom/onesignal/t$a;)V

    iput-object v4, p0, Lcom/onesignal/x;->x:Lcom/onesignal/n0;

    .line 18
    new-instance v4, Lcom/onesignal/l0;

    invoke-direct {v4, p0}, Lcom/onesignal/l0;-><init>(Lcom/onesignal/l0$c;)V

    iput-object v4, p0, Lcom/onesignal/x;->v:Lcom/onesignal/l0;

    .line 19
    iput-object p4, p0, Lcom/onesignal/x;->u:Lcom/shabakaty/downloader/ef2;

    .line 20
    iput-object p3, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    .line 21
    sget-object p3, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string p4, "PREFS_OS_DISPLAYED_IAMS"

    invoke-static {p3, p4, v0}, Lcom/shabakaty/downloader/s73;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 22
    invoke-interface {p2, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string p2, "PREFS_OS_IMPRESSIONED_IAMS"

    .line 23
    invoke-static {p3, p2, v0}, Lcom/shabakaty/downloader/s73;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 24
    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string p2, "PREFS_OS_PAGE_IMPRESSIONED_IAMS"

    .line 25
    invoke-static {p3, p2, v0}, Lcom/shabakaty/downloader/s73;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 26
    invoke-interface {v2, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string p2, "PREFS_OS_CLICKED_CLICK_IDS_IAMS"

    .line 27
    invoke-static {p3, p2, v0}, Lcom/shabakaty/downloader/s73;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 28
    invoke-interface {v3, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_3
    invoke-virtual {p0, p1}, Lcom/onesignal/x;->u(Lcom/shabakaty/downloader/q73;)V

    return-void
.end method

.method public static j(Lcom/onesignal/x;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successful post for in-app message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " request: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static k(Lcom/onesignal/x;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encountered a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " error while attempting in-app message "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " request: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/a33;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/shabakaty/downloader/i23;Lorg/json/JSONObject;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j23;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/j23;-><init>(Lorg/json/JSONObject;)V

    .line 2
    iget-boolean p2, p1, Lcom/shabakaty/downloader/i23;->i:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v1, p1, Lcom/shabakaty/downloader/i23;->i:Z

    const/4 p2, 0x1

    .line 4
    :goto_0
    iput-boolean p2, v0, Lcom/shabakaty/downloader/j23;->g:Z

    .line 5
    sget-object p2, Lcom/onesignal/q0;->a:Ljava/util/List;

    .line 6
    iget-object p2, v0, Lcom/shabakaty/downloader/j23;->e:Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/onesignal/x;->m(Lcom/shabakaty/downloader/i23;Ljava/util/List;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/onesignal/x;->s(Lcom/shabakaty/downloader/j23;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/onesignal/x;->I(Lcom/shabakaty/downloader/i23;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez p2, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    iget-object v4, v0, Lcom/shabakaty/downloader/j23;->a:Ljava/lang/String;

    .line 11
    iget-object v5, p1, Lcom/shabakaty/downloader/i23;->e:Lcom/shabakaty/downloader/s23;

    .line 12
    iget-boolean v5, v5, Lcom/shabakaty/downloader/s23;->e:Z

    if-eqz v5, :cond_2

    .line 13
    iget-object v5, p1, Lcom/shabakaty/downloader/i23;->d:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v1, v5

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/onesignal/x;->C:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/onesignal/x;->C:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, p1, Lcom/shabakaty/downloader/i23;->d:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/l23;

    invoke-direct {v1, p0, v4, p2, v0}, Lcom/shabakaty/downloader/l23;-><init>(Lcom/onesignal/x;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/j23;)V

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in_app_messages/"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/click"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Lcom/onesignal/w;

    invoke-direct {v4, p0, v0}, Lcom/onesignal/w;-><init>(Lcom/onesignal/x;Lcom/shabakaty/downloader/j23;)V

    invoke-static {p2, v1, v4}, Lcom/onesignal/x0;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/x0$d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 19
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const-string p2, "Unable to execute in-app message action HTTP request due to invalid JSON"

    .line 20
    invoke-static {v3, p2, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_2
    iget-object p2, v0, Lcom/shabakaty/downloader/j23;->f:Lcom/shabakaty/downloader/yo4;

    if-eqz p2, :cond_7

    .line 22
    iget-object v1, p2, Lcom/shabakaty/downloader/yo4;->b:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    .line 23
    invoke-static {v1, v2}, Lcom/onesignal/q0;->U(Lorg/json/JSONObject;Lcom/onesignal/q0$o;)V

    .line 24
    :cond_4
    iget-object p2, p2, Lcom/shabakaty/downloader/yo4;->c:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONArray;

    if-eqz p2, :cond_7

    const-string v1, "deleteTags()"

    .line 25
    invoke-static {v1}, Lcom/onesignal/q0;->Y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 26
    :cond_5
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 27
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 28
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 29
    :cond_6
    invoke-static {v1, v2}, Lcom/onesignal/q0;->U(Lorg/json/JSONObject;Lcom/onesignal/q0$o;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    const-string v1, "Failed to generate JSON for deleteTags."

    .line 30
    invoke-static {v3, v1, p2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :cond_7
    :goto_4
    iget-object p1, p1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    .line 32
    iget-object p2, v0, Lcom/shabakaty/downloader/j23;->d:Ljava/util/List;

    .line 33
    sget-object v0, Lcom/onesignal/q0;->G:Lcom/onesignal/j0;

    .line 34
    invoke-virtual {v0, p1}, Lcom/onesignal/j0;->c(Ljava/lang/String;)V

    .line 35
    sget-object p1, Lcom/onesignal/q0;->H:Lcom/onesignal/f0;

    if-eqz p1, :cond_15

    sget-object v0, Lcom/onesignal/q0;->d:Ljava/lang/String;

    if-nez v0, :cond_8

    goto/16 :goto_a

    .line 36
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/q23;

    .line 37
    iget-object v1, v0, Lcom/shabakaty/downloader/q23;->a:Ljava/lang/String;

    .line 38
    iget-boolean v3, v0, Lcom/shabakaty/downloader/q23;->c:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    .line 39
    iget-object v0, p1, Lcom/onesignal/f0;->c:Lcom/onesignal/j0;

    invoke-virtual {v0}, Lcom/onesignal/j0;->b()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x6

    .line 40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/v23;

    .line 42
    iget-object v7, v6, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    .line 43
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v8, Lcom/shabakaty/downloader/z23;->u:Lcom/shabakaty/downloader/z23;

    if-ne v7, v8, :cond_a

    const/4 v7, 0x1

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_9

    const-string v7, "Outcomes disabled for channel: "

    .line 45
    invoke-static {v7}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 46
    iget-object v8, v6, Lcom/shabakaty/downloader/v23;->b:Lcom/shabakaty/downloader/w23;

    .line 47
    iget-object v8, v8, Lcom/shabakaty/downloader/w23;->r:Ljava/lang/String;

    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-static {v3, v7, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 51
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Unique Outcome disabled for current session"

    .line 52
    invoke-static {v3, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 53
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/v23;

    .line 54
    iget-object v6, v6, Lcom/shabakaty/downloader/v23;->a:Lcom/shabakaty/downloader/z23;

    .line 55
    invoke-virtual {v6}, Lcom/shabakaty/downloader/z23;->f()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    const-string v6, "\nOutcome name: "

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p1, Lcom/onesignal/f0;->b:Lcom/shabakaty/downloader/np4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->c()Lcom/shabakaty/downloader/t33;

    move-result-object v0

    invoke-interface {v0, v1, v5}, Lcom/shabakaty/downloader/t33;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_f

    goto :goto_9

    :cond_f
    move-object v0, v2

    :goto_9
    if-nez v0, :cond_10

    const-string v0, "Measure endpoint will not send because unique outcome already sent for: \nSessionInfluences: "

    .line 58
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v3, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 61
    :cond_10
    invoke-virtual {p1, v1, v4, v0, v2}, Lcom/onesignal/f0;->b(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/q0$w;)V

    goto/16 :goto_5

    .line 62
    :cond_11
    iget-object v0, p1, Lcom/onesignal/f0;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "Measure endpoint will not send because unique outcome already sent for: \nSession: "

    .line 63
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/shabakaty/downloader/z23;->t:Lcom/shabakaty/downloader/z23;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v3, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 65
    :cond_12
    iget-object v0, p1, Lcom/onesignal/f0;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1, v1, v4, v5, v2}, Lcom/onesignal/f0;->b(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/q0$w;)V

    goto/16 :goto_5

    .line 67
    :cond_13
    iget v0, v0, Lcom/shabakaty/downloader/q23;->b:F

    cmpl-float v3, v0, v4

    if-lez v3, :cond_14

    .line 68
    iget-object v3, p1, Lcom/onesignal/f0;->c:Lcom/onesignal/j0;

    invoke-virtual {v3}, Lcom/onesignal/j0;->b()Ljava/util/List;

    move-result-object v3

    .line 69
    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/onesignal/f0;->b(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/q0$w;)V

    goto/16 :goto_5

    .line 70
    :cond_14
    iget-object v0, p1, Lcom/onesignal/f0;->c:Lcom/onesignal/j0;

    invoke-virtual {v0}, Lcom/onesignal/j0;->b()Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-virtual {p1, v1, v4, v0, v2}, Lcom/onesignal/f0;->b(Ljava/lang/String;FLjava/util/List;Lcom/onesignal/q0$w;)V

    goto/16 :goto_5

    :cond_15
    :goto_a
    const-string p1, "Make sure OneSignal.init is called first"

    .line 72
    invoke-static {v3, p1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    return-void
.end method

.method public B(Lcom/shabakaty/downloader/i23;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j23;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/j23;-><init>(Lorg/json/JSONObject;)V

    .line 2
    iget-boolean p2, p1, Lcom/shabakaty/downloader/i23;->i:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/shabakaty/downloader/i23;->i:Z

    .line 4
    :goto_0
    iput-boolean p2, v0, Lcom/shabakaty/downloader/j23;->g:Z

    .line 5
    sget-object p2, Lcom/onesignal/q0;->a:Ljava/util/List;

    .line 6
    iget-object p2, v0, Lcom/shabakaty/downloader/j23;->e:Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/onesignal/x;->m(Lcom/shabakaty/downloader/i23;Ljava/util/List;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/onesignal/x;->s(Lcom/shabakaty/downloader/j23;)V

    const/4 p1, 0x6

    .line 9
    iget-object p2, v0, Lcom/shabakaty/downloader/j23;->f:Lcom/shabakaty/downloader/yo4;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string p2, "Tags detected inside of the action click payload, ignoring because action came from IAM preview:: "

    .line 10
    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11
    iget-object v2, v0, Lcom/shabakaty/downloader/j23;->f:Lcom/shabakaty/downloader/yo4;

    .line 12
    invoke-virtual {v2}, Lcom/shabakaty/downloader/yo4;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p1, p2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_1
    iget-object p2, v0, Lcom/shabakaty/downloader/j23;->d:Ljava/util/List;

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    const-string p2, "Outcomes detected inside of the action click payload, ignoring because action came from IAM preview: "

    .line 16
    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/j23;->d:Ljava/util/List;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p1, p2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final C(Lorg/json/JSONArray;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/onesignal/x;->M:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/i23;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/i23;-><init>(Lorg/json/JSONObject;)V

    .line 6
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, p0, Lcom/onesignal/x;->y:Ljava/util/ArrayList;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Lcom/onesignal/x;->r()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final D(Lcom/shabakaty/downloader/i23;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In app message with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", added to the queue"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/x;->l()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public E(Lorg/json/JSONArray;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v1, "PREFS_OS_CACHED_IAMS"

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/onesignal/x$g;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/x$g;-><init>(Lcom/onesignal/x;Lorg/json/JSONArray;)V

    .line 5
    sget-object p1, Lcom/onesignal/x;->M:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/x;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    const-string v2, "Delaying task due to redisplay data not retrieved yet"

    const/4 v3, 0x0

    .line 7
    invoke-static {v1, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object v1, p0, Lcom/onesignal/x;->t:Lcom/shabakaty/downloader/f43;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f43;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/onesignal/x$g;->run()V

    .line 10
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public F()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/onesignal/x;->M:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/x;->E:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/onesignal/x;->t:Lcom/shabakaty/downloader/f43;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/f43;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final G(Lcom/shabakaty/downloader/i23;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/i23;",
            "Ljava/util/List<",
            "Lcom/onesignal/a0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/a0;

    .line 2
    iget-boolean v2, v1, Lcom/onesignal/a0;->a:Z

    if-nez v2, :cond_0

    .line 3
    iput-object v1, p0, Lcom/onesignal/x;->F:Lcom/onesignal/a0;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/onesignal/x;->F:Lcom/onesignal/a0;

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_2

    const-string v0, "IAM prompt to handle: "

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/onesignal/x;->F:Lcom/onesignal/a0;

    invoke-virtual {v3}, Lcom/onesignal/a0;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v2, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lcom/onesignal/x;->F:Lcom/onesignal/a0;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/onesignal/a0;->a:Z

    .line 9
    new-instance v1, Lcom/onesignal/x$i;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/x$i;-><init>(Lcom/onesignal/x;Lcom/shabakaty/downloader/i23;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/a0;->b(Lcom/onesignal/q0$u;)V

    goto :goto_0

    :cond_2
    const-string p2, "No IAM prompt to handle, dismiss message: "

    .line 10
    invoke-static {p2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {v2, p2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/onesignal/x;->y(Lcom/shabakaty/downloader/i23;)V

    :goto_0
    return-void
.end method

.method public H(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onesignal/x;->H:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "\n\n<script>\n    setPlayerTags(%s);\n</script>"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final I(Lcom/shabakaty/downloader/i23;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onesignal/x;->u:Lcom/shabakaty/downloader/ef2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ef2;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/onesignal/x;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/shabakaty/downloader/i23;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/i23;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v0, "default"

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "messageTriggerConditionChanged called"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Lcom/onesignal/x;->r()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onesignal/x;->l()V

    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/x;->v:Lcom/onesignal/l0;

    invoke-virtual {v1}, Lcom/onesignal/l0;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    const-string v2, "In app message not showing due to system condition not correct"

    check-cast v1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a33;->d(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x6

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayFirstIAMOnQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-static {v1, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iget-object v1, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/onesignal/x;->w()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    const-string v2, "No IAM showing currently, showing first item in the queue!"

    check-cast v1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/i23;

    invoke-virtual {p0, v1}, Lcom/onesignal/x;->p(Lcom/shabakaty/downloader/i23;)V

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In app message is currently showing or there are no IAMs left in the queue! isInAppMessageShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/x;->w()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m(Lcom/shabakaty/downloader/i23;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/i23;",
            "Ljava/util/List<",
            "Lcom/onesignal/a0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x6

    const-string v1, "IAM showing prompts from IAM: "

    .line 2
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/i23;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    sget v1, Lcom/onesignal/y1;->g:I

    const-string v1, "WebViewManager IAM dismissAndAwaitNextMessage lastInstance: "

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/onesignal/y1;->h:Lcom/onesignal/y1;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    sget-object v0, Lcom/onesignal/y1;->h:Lcom/onesignal/y1;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Lcom/onesignal/y1;->f(Lcom/onesignal/y1$f;)V

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onesignal/x;->G(Lcom/shabakaty/downloader/i23;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    new-instance v0, Lcom/onesignal/x$d;

    invoke-direct {v0, p0}, Lcom/onesignal/x$d;-><init>(Lcom/onesignal/x;)V

    const-string v1, "OS_IAM_DB_ACCESS"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/zl2;->g(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final o(Lcom/shabakaty/downloader/i23;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/onesignal/q0;->G:Lcom/onesignal/j0;

    .line 2
    iget-object v1, v0, Lcom/onesignal/j0;->c:Lcom/shabakaty/downloader/b33;

    check-cast v1, Lcom/shabakaty/downloader/a33;

    const-string v2, "OneSignal SessionManager onDirectInfluenceFromIAMClickFinished"

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/yh1;->g()Lcom/shabakaty/downloader/c23;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/c23;->l()V

    .line 5
    iget-object v0, p0, Lcom/onesignal/x;->F:Lcom/onesignal/a0;

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    const-string v0, "Stop evaluateMessageDisplayQueue because prompt is currently displayed"

    check-cast p1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/onesignal/x;->G:Z

    .line 8
    iget-object v1, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_2

    .line 9
    :try_start_0
    iget-boolean v2, p1, Lcom/shabakaty/downloader/i23;->k:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    const-string v0, "Message already removed from the queue!"

    check-cast p1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 12
    monitor-exit v1

    return-void

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/i23;

    iget-object p1, p1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In app message with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dismissed (removed) from the queue!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v2, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In app message on queue available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/i23;

    iget-object v3, v3, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/onesignal/x;->D:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/i23;

    invoke-virtual {p0, p1}, Lcom/onesignal/x;->p(Lcom/shabakaty/downloader/i23;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    const-string v0, "In app message dismissed evaluating messages"

    check-cast p1, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/onesignal/x;->r()V

    .line 20
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final p(Lcom/shabakaty/downloader/i23;)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/onesignal/x;->G:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/onesignal/x;->t(Lcom/shabakaty/downloader/i23;Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onesignal/x;->I(Lcom/shabakaty/downloader/i23;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    const-string v2, "Unable to find a variant for in-app message "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a33;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "in_app_messages/"

    .line 5
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    const-string v4, "/variants/"

    const-string v5, "/html?app_id="

    invoke-static {v2, v3, v4, v0, v5}, Lcom/shabakaty/downloader/u32;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/onesignal/q0;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    new-instance v2, Lcom/onesignal/x$b;

    invoke-direct {v2, p0, p1}, Lcom/onesignal/x$b;-><init>(Lcom/onesignal/x;Lcom/shabakaty/downloader/i23;)V

    invoke-static {v0, v2, v1}, Lcom/onesignal/x0;->a(Ljava/lang/String;Lcom/onesignal/x0$d;Ljava/lang/String;)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/onesignal/x;->G:Z

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/i23;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/i23;-><init>(Z)V

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/onesignal/x;->t(Lcom/shabakaty/downloader/i23;Z)V

    const-string v0, "in_app_messages/device_preview?preview_id="

    const-string v2, "&app_id="

    .line 4
    invoke-static {v0, p1, v2}, Lcom/shabakaty/downloader/t3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/onesignal/q0;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/onesignal/x$c;

    invoke-direct {v0, p0, v1}, Lcom/onesignal/x$c;-><init>(Lcom/onesignal/x;Lcom/shabakaty/downloader/i23;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/onesignal/x0;->a(Ljava/lang/String;Lcom/onesignal/x0$d;Ljava/lang/String;)V

    return-void
.end method

.method public final r()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Lcom/onesignal/m0$a;->s:Lcom/onesignal/m0$a;

    sget-object v2, Lcom/onesignal/m0$a;->t:Lcom/onesignal/m0$a;

    const-string v3, "Starting evaluateInAppMessages"

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 2
    invoke-static {v4, v3, v5}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/x;->F()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, v1, Lcom/onesignal/x;->t:Lcom/shabakaty/downloader/f43;

    new-instance v2, Lcom/onesignal/x$h;

    invoke-direct {v2, v1}, Lcom/onesignal/x$h;-><init>(Lcom/onesignal/x;)V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/f43;->a(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_0
    iget-object v3, v1, Lcom/onesignal/x;->y:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/i23;

    .line 6
    iget-object v5, v1, Lcom/onesignal/x;->x:Lcom/onesignal/n0;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v6, v4, Lcom/shabakaty/downloader/i23;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    move-object v15, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v16, v4

    goto/16 :goto_12

    .line 8
    :cond_1
    iget-object v6, v4, Lcom/shabakaty/downloader/i23;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onesignal/m0;

    .line 10
    sget-object v10, Lcom/onesignal/m0$b;->t:Lcom/onesignal/m0$b;

    sget-object v11, Lcom/onesignal/m0$b;->v:Lcom/onesignal/m0$b;

    iget-object v12, v9, Lcom/onesignal/m0;->b:Lcom/onesignal/m0$a;

    if-ne v12, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eq v12, v0, :cond_14

    .line 11
    iget-object v10, v5, Lcom/onesignal/n0;->a:Lcom/onesignal/t;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v11, v9, Lcom/onesignal/m0;->e:Ljava/lang/Object;

    if-nez v11, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    iget-object v12, v10, Lcom/onesignal/t;->b:Ljava/util/ArrayList;

    monitor-enter v12

    .line 14
    :try_start_0
    iget-object v11, v9, Lcom/onesignal/m0;->e:Ljava/lang/Object;

    instance-of v11, v11, Ljava/lang/Number;

    if-nez v11, :cond_4

    .line 15
    monitor-exit v12

    goto :goto_3

    .line 16
    :cond_4
    iget-object v11, v9, Lcom/onesignal/m0;->b:Lcom/onesignal/m0$a;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_6

    if-eq v11, v7, :cond_5

    const-wide/16 v13, 0x0

    goto :goto_5

    .line 17
    :cond_5
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sget-object v7, Lcom/onesignal/t;->c:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    goto :goto_4

    .line 18
    :cond_6
    invoke-static {}, Lcom/onesignal/q0;->u()Lcom/onesignal/x;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onesignal/x;->w()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 19
    monitor-exit v12

    :goto_3
    move-object v15, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v16, v4

    move-object v1, v5

    move-object/from16 v18, v6

    goto/16 :goto_f

    .line 20
    :cond_7
    invoke-static {}, Lcom/onesignal/q0;->u()Lcom/onesignal/x;

    move-result-object v7

    iget-object v7, v7, Lcom/onesignal/x;->K:Ljava/util/Date;

    if-nez v7, :cond_8

    const-wide/32 v13, 0xf423f

    goto :goto_5

    .line 21
    :cond_8
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    :goto_4
    sub-long/2addr v13, v15

    .line 22
    :goto_5
    iget-object v7, v9, Lcom/onesignal/m0;->a:Ljava/lang/String;

    .line 23
    iget-object v11, v9, Lcom/onesignal/m0;->e:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    const-wide v17, 0x408f400000000000L    # 1000.0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    mul-double v2, v15, v17

    double-to-long v2, v2

    move-object v15, v0

    long-to-double v0, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    long-to-double v4, v13

    .line 24
    iget-object v9, v9, Lcom/onesignal/m0;->d:Lcom/onesignal/m0$b;

    .line 25
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v18, v6

    const/4 v6, 0x1

    if-eq v11, v6, :cond_d

    const/4 v6, 0x2

    if-eq v11, v6, :cond_c

    const/4 v6, 0x3

    if-eq v11, v6, :cond_b

    const/4 v6, 0x4

    if-eq v11, v6, :cond_a

    const/4 v6, 0x5

    if-eq v11, v6, :cond_9

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to apply an invalid operator on a time-based in-app-message trigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, v9, Lcom/onesignal/m0$b;->r:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 29
    invoke-static {v1, v0, v4}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    cmpl-double v6, v4, v0

    if-gez v6, :cond_f

    .line 30
    invoke-static {v0, v1, v4, v5}, Lcom/onesignal/t;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    :cond_a
    cmpg-double v6, v4, v0

    if-lez v6, :cond_f

    .line 31
    invoke-static {v0, v1, v4, v5}, Lcom/onesignal/t;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    .line 32
    :cond_b
    invoke-static {v0, v1, v4, v5}, Lcom/onesignal/t;->a(DD)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 33
    :cond_c
    invoke-static {v0, v1, v4, v5}, Lcom/onesignal/t;->a(DD)Z

    move-result v0

    goto :goto_8

    :cond_d
    cmpg-double v6, v4, v0

    if-gez v6, :cond_10

    goto :goto_6

    :cond_e
    move-object/from16 v18, v6

    cmpl-double v6, v4, v0

    if-ltz v6, :cond_10

    :cond_f
    :goto_6
    const/4 v0, 0x1

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_11

    .line 34
    iget-object v0, v10, Lcom/onesignal/t;->a:Lcom/onesignal/t$a;

    check-cast v0, Lcom/onesignal/x;

    invoke-virtual {v0, v7}, Lcom/onesignal/x;->x(Ljava/lang/String;)V

    .line 35
    monitor-exit v12

    move-object/from16 v1, v17

    goto/16 :goto_e

    :cond_11
    sub-long/2addr v2, v13

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_12

    .line 36
    monitor-exit v12

    :goto_9
    move-object/from16 v1, v17

    goto/16 :goto_f

    .line 37
    :cond_12
    iget-object v0, v10, Lcom/onesignal/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 38
    monitor-exit v12

    goto :goto_9

    .line 39
    :cond_13
    new-instance v0, Lcom/onesignal/s;

    invoke-direct {v0, v10, v7}, Lcom/onesignal/s;-><init>(Lcom/onesignal/t;Ljava/lang/String;)V

    invoke-static {v0, v7, v2, v3}, Lcom/shabakaty/downloader/f23;->a(Ljava/util/TimerTask;Ljava/lang/String;J)V

    .line 40
    iget-object v0, v10, Lcom/onesignal/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    monitor-exit v12

    goto :goto_9

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_14
    move-object v15, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 42
    iget-object v0, v9, Lcom/onesignal/m0;->d:Lcom/onesignal/m0$b;

    move-object/from16 v1, v17

    .line 43
    iget-object v2, v1, Lcom/onesignal/n0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v9, Lcom/onesignal/m0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_16

    if-ne v0, v11, :cond_15

    goto/16 :goto_e

    :cond_15
    if-ne v0, v10, :cond_22

    .line 44
    iget-object v0, v9, Lcom/onesignal/m0;->e:Ljava/lang/Object;

    if-eqz v0, :cond_22

    goto/16 :goto_e

    .line 45
    :cond_16
    sget-object v3, Lcom/onesignal/m0$b;->u:Lcom/onesignal/m0$b;

    if-ne v0, v3, :cond_17

    goto/16 :goto_e

    :cond_17
    if-ne v0, v11, :cond_18

    goto/16 :goto_f

    .line 46
    :cond_18
    sget-object v3, Lcom/onesignal/m0$b;->w:Lcom/onesignal/m0$b;

    if-ne v0, v3, :cond_19

    .line 47
    instance-of v0, v2, Ljava/util/Collection;

    if-eqz v0, :cond_22

    check-cast v2, Ljava/util/Collection;

    iget-object v0, v9, Lcom/onesignal/m0;->e:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_e

    .line 48
    :cond_19
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v4, v9, Lcom/onesignal/m0;->e:Ljava/lang/Object;

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1a

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 49
    invoke-virtual {v1, v4, v5, v0}, Lcom/onesignal/n0;->b(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/m0$b;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_e

    .line 50
    :cond_1a
    iget-object v4, v9, Lcom/onesignal/m0;->e:Ljava/lang/Object;

    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_1b

    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_1b

    check-cast v4, Ljava/lang/Number;

    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    .line 51
    invoke-virtual {v1, v4, v5, v0}, Lcom/onesignal/n0;->a(Ljava/lang/Number;Ljava/lang/Number;Lcom/onesignal/m0$b;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_e

    .line 52
    :cond_1b
    iget-object v4, v9, Lcom/onesignal/m0;->e:Ljava/lang/Object;

    if-nez v4, :cond_1c

    goto :goto_c

    .line 53
    :cond_1c
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v5, Lcom/onesignal/m0$b;->s:Lcom/onesignal/m0$b;

    if-eq v0, v5, :cond_1e

    if-ne v0, v10, :cond_1d

    goto :goto_a

    :cond_1d
    const/4 v5, 0x0

    goto :goto_b

    :cond_1e
    :goto_a
    const/4 v5, 0x1

    :goto_b
    if-eqz v5, :cond_20

    .line 55
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_1f

    .line 58
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.#"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 60
    :cond_1f
    invoke-virtual {v1, v3, v4, v0}, Lcom/onesignal/n0;->b(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/m0$b;)Z

    move-result v0

    goto :goto_d

    :cond_20
    if-eqz v3, :cond_21

    .line 61
    instance-of v3, v4, Ljava/lang/Number;

    if-eqz v3, :cond_21

    .line 62
    check-cast v4, Ljava/lang/Number;

    check-cast v2, Ljava/lang/String;

    .line 63
    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Lcom/onesignal/n0;->a(Ljava/lang/Number;Ljava/lang/Number;Lcom/onesignal/m0$b;)Z

    move-result v0

    goto :goto_d

    :catch_0
    :cond_21
    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_22

    :goto_e
    const/4 v0, 0x1

    goto :goto_10

    :cond_22
    :goto_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_23

    const/4 v0, 0x0

    goto :goto_11

    :cond_23
    const/4 v7, 0x1

    move-object v5, v1

    move-object v0, v15

    move-object/from16 v4, v16

    move-object/from16 v6, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v1, p0

    goto/16 :goto_2

    :cond_24
    move-object v15, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v16, v4

    move-object v1, v5

    move-object/from16 v18, v6

    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_25

    :goto_12
    const/4 v0, 0x1

    goto :goto_13

    :cond_25
    const/4 v7, 0x1

    move-object v5, v1

    move-object v0, v15

    move-object/from16 v4, v16

    move-object/from16 v6, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_26
    move-object v15, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v16, v4

    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_37

    move-object/from16 v1, p0

    .line 65
    iget-object v0, v1, Lcom/onesignal/x;->z:Ljava/util/Set;

    move-object/from16 v4, v16

    iget-object v2, v4, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    iget-object v2, v1, Lcom/onesignal/x;->E:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eqz v0, :cond_34

    const/4 v0, -0x1

    if-eq v2, v0, :cond_34

    .line 67
    iget-object v0, v1, Lcom/onesignal/x;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/i23;

    .line 68
    iget-object v2, v4, Lcom/shabakaty/downloader/i23;->e:Lcom/shabakaty/downloader/s23;

    iget-object v3, v0, Lcom/shabakaty/downloader/i23;->e:Lcom/shabakaty/downloader/s23;

    .line 69
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-wide v5, v3, Lcom/shabakaty/downloader/s23;->a:J

    .line 71
    iput-wide v5, v2, Lcom/shabakaty/downloader/s23;->a:J

    .line 72
    iget v3, v3, Lcom/shabakaty/downloader/s23;->b:I

    .line 73
    iput v3, v2, Lcom/shabakaty/downloader/s23;->b:I

    .line 74
    iget-boolean v0, v0, Lcom/shabakaty/downloader/i23;->g:Z

    .line 75
    iput-boolean v0, v4, Lcom/shabakaty/downloader/i23;->g:Z

    .line 76
    iget-object v0, v1, Lcom/onesignal/x;->x:Lcom/onesignal/n0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, v4, Lcom/shabakaty/downloader/i23;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_15

    .line 78
    :cond_27
    iget-object v0, v4, Lcom/shabakaty/downloader/i23;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/m0;

    .line 80
    iget-object v3, v3, Lcom/onesignal/m0;->b:Lcom/onesignal/m0$a;

    move-object v5, v15

    move-object/from16 v6, v19

    if-eq v3, v5, :cond_2c

    if-ne v3, v6, :cond_29

    goto :goto_16

    :cond_29
    move-object v15, v5

    move-object/from16 v19, v6

    goto :goto_14

    :cond_2a
    move-object v5, v15

    move-object/from16 v6, v19

    const/4 v0, 0x1

    goto :goto_17

    :cond_2b
    :goto_15
    move-object v5, v15

    move-object/from16 v6, v19

    :cond_2c
    :goto_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_2d

    .line 81
    iget-boolean v0, v4, Lcom/shabakaty/downloader/i23;->g:Z

    xor-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 82
    :cond_2d
    iget-boolean v0, v4, Lcom/shabakaty/downloader/i23;->g:Z

    if-nez v0, :cond_2e

    .line 83
    iget-object v0, v4, Lcom/shabakaty/downloader/i23;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_18

    :cond_2e
    const/4 v0, 0x0

    .line 84
    :goto_18
    iget-boolean v2, v4, Lcom/shabakaty/downloader/i23;->h:Z

    if-nez v2, :cond_30

    if-eqz v0, :cond_2f

    goto :goto_19

    :cond_2f
    const/4 v0, 0x0

    goto :goto_1a

    :cond_30
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    const-string v2, "setDataForRedisplay: "

    .line 85
    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/shabakaty/downloader/i23;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " triggerHasChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x6

    .line 86
    invoke-static {v7, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_35

    .line 87
    iget-object v0, v4, Lcom/shabakaty/downloader/i23;->e:Lcom/shabakaty/downloader/s23;

    .line 88
    iget-wide v2, v0, Lcom/shabakaty/downloader/s23;->a:J

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-gez v9, :cond_31

    goto :goto_1b

    .line 89
    :cond_31
    sget-object v2, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 90
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    .line 92
    div-long/2addr v2, v7

    .line 93
    iget-wide v7, v0, Lcom/shabakaty/downloader/s23;->a:J

    sub-long v7, v2, v7

    const-string v9, "OSInAppMessage lastDisplayTime: "

    .line 94
    invoke-static {v9}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Lcom/shabakaty/downloader/s23;->a:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " currentTimeInSeconds: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " diffInSeconds: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " displayDelay: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/shabakaty/downloader/s23;->d:J

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v9, 0x6

    .line 95
    invoke-static {v9, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    iget-wide v2, v0, Lcom/shabakaty/downloader/s23;->d:J

    cmp-long v0, v7, v2

    if-ltz v0, :cond_32

    :goto_1b
    const/4 v0, 0x1

    goto :goto_1c

    :cond_32
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_35

    .line 97
    iget-object v0, v4, Lcom/shabakaty/downloader/i23;->e:Lcom/shabakaty/downloader/s23;

    .line 98
    iget v2, v0, Lcom/shabakaty/downloader/s23;->b:I

    iget v0, v0, Lcom/shabakaty/downloader/s23;->c:I

    if-ge v2, v0, :cond_33

    const/4 v0, 0x1

    goto :goto_1d

    :cond_33
    const/4 v0, 0x0

    .line 99
    :goto_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OSInAppMessage shouldDisplayAgain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v7, 0x6

    .line 100
    invoke-static {v7, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_35

    const-string v0, "setDataForRedisplay message available for redisplay: "

    .line 101
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v4, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v7, v0, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    iget-object v0, v1, Lcom/onesignal/x;->z:Ljava/util/Set;

    iget-object v2, v4, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, v1, Lcom/onesignal/x;->A:Ljava/util/Set;

    iget-object v2, v4, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, v1, Lcom/onesignal/x;->B:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 106
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    iget-object v2, v1, Lcom/onesignal/x;->B:Ljava/util/Set;

    const-string v3, "PREFS_OS_PAGE_IMPRESSIONED_IAMS"

    .line 107
    invoke-static {v0, v3, v2}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, v4, Lcom/shabakaty/downloader/i23;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_1e

    :cond_34
    move-object v5, v15

    move-object/from16 v6, v19

    .line 109
    :cond_35
    :goto_1e
    iget-object v0, v1, Lcom/onesignal/x;->z:Ljava/util/Set;

    iget-object v2, v4, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 110
    iget-object v0, v4, Lcom/shabakaty/downloader/i23;->j:Ljava/util/Date;

    if-nez v0, :cond_36

    const/4 v0, 0x0

    goto :goto_1f

    .line 111
    :cond_36
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 112
    iget-object v2, v4, Lcom/shabakaty/downloader/i23;->j:Ljava/util/Date;

    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    :goto_1f
    if-nez v0, :cond_38

    .line 113
    invoke-virtual {v1, v4}, Lcom/onesignal/x;->D(Lcom/shabakaty/downloader/i23;)V

    goto :goto_20

    :cond_37
    move-object/from16 v1, p0

    move-object v5, v15

    move-object/from16 v6, v19

    :cond_38
    :goto_20
    move-object v0, v5

    move-object v2, v6

    move-object/from16 v3, v20

    goto/16 :goto_0

    :cond_39
    return-void
.end method

.method public final s(Lcom/shabakaty/downloader/j23;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/j23;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget v0, p1, Lcom/shabakaty/downloader/j23;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/j23;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/onesignal/o0;->u(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/j23;->c:Ljava/lang/String;

    .line 7
    :try_start_0
    const-class v0, Lcom/shabakaty/downloader/fh0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/o73;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/o73;-><init>(Ljava/lang/String;Z)V

    .line 9
    sget-object p1, Lcom/onesignal/q0;->b:Landroid/content/Context;

    const-string v1, "com.android.chrome"

    invoke-static {p1, v1, v0}, Lcom/shabakaty/downloader/eh0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/fh0;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final t(Lcom/shabakaty/downloader/i23;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/onesignal/x;->J:Z

    if-nez p2, :cond_0

    .line 2
    iget-boolean v0, p1, Lcom/shabakaty/downloader/i23;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/onesignal/x;->J:Z

    .line 4
    new-instance v0, Lcom/onesignal/x$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/onesignal/x$a;-><init>(Lcom/onesignal/x;ZLcom/shabakaty/downloader/i23;)V

    invoke-static {v0}, Lcom/onesignal/q0;->y(Lcom/onesignal/q0$r;)V

    :cond_1
    return-void
.end method

.method public u(Lcom/shabakaty/downloader/q73;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onesignal/x;->w:Lcom/shabakaty/downloader/t23;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/t23;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/t23;-><init>(Lcom/shabakaty/downloader/q73;)V

    iput-object v0, p0, Lcom/onesignal/x;->w:Lcom/shabakaty/downloader/t23;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/onesignal/x;->w:Lcom/shabakaty/downloader/t23;

    .line 4
    iput-object p1, p0, Lcom/onesignal/x;->w:Lcom/shabakaty/downloader/t23;

    .line 5
    new-instance p1, Lcom/onesignal/x$f;

    invoke-direct {p1, p0}, Lcom/onesignal/x$f;-><init>(Lcom/onesignal/x;)V

    .line 6
    iget-object v0, p0, Lcom/onesignal/x;->t:Lcom/shabakaty/downloader/f43;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/f43;->a(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lcom/onesignal/x;->t:Lcom/shabakaty/downloader/f43;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/f43;->c()V

    return-void
.end method

.method public v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/onesignal/x;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "initWithCachedInAppMessages with already in memory messages: "

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/onesignal/x;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    const-string v3, "PREFS_OS_CACHED_IAMS"

    invoke-static {v0, v3, v2}, Lcom/shabakaty/downloader/s73;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWithCachedInAppMessages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v1, v3, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    sget-object v1, Lcom/onesignal/x;->M:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/onesignal/x;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 11
    :cond_2
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/onesignal/x;->C(Lorg/json/JSONArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 13
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/onesignal/x;->G:Z

    return v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageDynamicTriggerCompleted called with triggerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/onesignal/x;->y:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/i23;

    .line 6
    iget-boolean v2, v1, Lcom/shabakaty/downloader/i23;->h:Z

    if-nez v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/onesignal/x;->E:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/onesignal/x;->x:Lcom/onesignal/n0;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, v1, Lcom/shabakaty/downloader/i23;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11
    iget-object v6, v1, Lcom/shabakaty/downloader/i23;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onesignal/m0;

    .line 13
    iget-object v9, v8, Lcom/onesignal/m0;->c:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v8, v8, Lcom/onesignal/m0;->a:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_5
    const/4 v3, 0x1

    :cond_6
    :goto_1
    if-eqz v3, :cond_0

    .line 14
    iget-object v2, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    const-string v3, "Trigger changed for message: "

    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/shabakaty/downloader/i23;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 15
    iput-boolean v4, v1, Lcom/shabakaty/downloader/i23;->h:Z

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public y(Lcom/shabakaty/downloader/i23;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onesignal/x;->z(Lcom/shabakaty/downloader/i23;Z)V

    return-void
.end method

.method public z(Lcom/shabakaty/downloader/i23;Z)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/shabakaty/downloader/i23;->k:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/onesignal/x;->z:Ljava/util/Set;

    iget-object v1, p1, Lcom/shabakaty/downloader/i23;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_1

    .line 3
    sget-object p2, Lcom/shabakaty/downloader/s73;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/onesignal/x;->z:Ljava/util/Set;

    const-string v1, "PREFS_OS_DISPLAYED_IAMS"

    .line 4
    invoke-static {p2, v1, v0}, Lcom/shabakaty/downloader/s73;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p0, Lcom/onesignal/x;->K:Ljava/util/Date;

    .line 6
    sget-object p2, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 9
    div-long/2addr v0, v2

    .line 10
    iget-object p2, p1, Lcom/shabakaty/downloader/i23;->e:Lcom/shabakaty/downloader/s23;

    .line 11
    iput-wide v0, p2, Lcom/shabakaty/downloader/s23;->a:J

    .line 12
    iget v0, p2, Lcom/shabakaty/downloader/s23;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/shabakaty/downloader/s23;->b:I

    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p1, Lcom/shabakaty/downloader/i23;->h:Z

    .line 14
    iput-boolean v1, p1, Lcom/shabakaty/downloader/i23;->g:Z

    .line 15
    new-instance p2, Lcom/shabakaty/downloader/m23;

    invoke-direct {p2, p0, p1}, Lcom/shabakaty/downloader/m23;-><init>(Lcom/onesignal/x;Lcom/shabakaty/downloader/i23;)V

    const-string v0, "OS_IAM_DB_ACCESS"

    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/shabakaty/downloader/zl2;->g(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/onesignal/x;->E:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/onesignal/x;->E:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/onesignal/x;->E:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :goto_0
    iget-object p2, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    const-string v0, "persistInAppMessageForRedisplay: "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/i23;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with msg array data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onesignal/x;->E:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/onesignal/x;->s:Lcom/shabakaty/downloader/b33;

    const-string v0, "OSInAppMessageController messageWasDismissed dismissedMessages: "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/x;->z:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/shabakaty/downloader/a33;

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    .line 22
    :cond_2
    invoke-virtual {p0, p1}, Lcom/onesignal/x;->o(Lcom/shabakaty/downloader/i23;)V

    return-void
.end method
