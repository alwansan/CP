.class public Lcom/shabakaty/downloader/c33;
.super Ljava/lang/Object;
.source "OSNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/c33$b;,
        Lcom/shabakaty/downloader/c33$a;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/o03;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/c33;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lorg/json/JSONObject;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/c33$a;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/String;

.field public v:Lcom/shabakaty/downloader/c33$b;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/c33;->q:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/json/JSONObject;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/c33;",
            ">;",
            "Lorg/json/JSONObject;",
            "I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/c33;->q:I

    const/4 v0, 0x3

    .line 6
    :try_start_0
    invoke-static {p2}, Lcom/onesignal/q;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v2, "i"

    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/c33;->d:Ljava/lang/String;

    const-string v2, "ti"

    .line 8
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/c33;->f:Ljava/lang/String;

    const-string v2, "tn"

    .line 9
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/c33;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/c33;->y:Ljava/lang/String;

    const-string v2, "a"

    .line 11
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/shabakaty/downloader/c33;->i:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v3, "u"

    .line 12
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->n:Ljava/lang/String;

    const-string v1, "alert"

    .line 13
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->h:Ljava/lang/String;

    const-string v1, "title"

    .line 14
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->g:Ljava/lang/String;

    const-string v1, "sicon"

    .line 15
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->j:Ljava/lang/String;

    const-string v1, "bicon"

    .line 16
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->l:Ljava/lang/String;

    const-string v1, "licon"

    .line 17
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->k:Ljava/lang/String;

    const-string v1, "sound"

    .line 18
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->o:Ljava/lang/String;

    const-string v1, "grp"

    .line 19
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->r:Ljava/lang/String;

    const-string v1, "grp_msg"

    .line 20
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->s:Ljava/lang/String;

    const-string v1, "bgac"

    .line 21
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->m:Ljava/lang/String;

    const-string v1, "ledc"

    .line 22
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->p:Ljava/lang/String;

    const-string v1, "vis"

    .line 23
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/c33;->q:I

    :cond_0
    const-string v1, "from"

    .line 25
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->u:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "pri"

    .line 26
    invoke-virtual {p2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/c33;->x:I

    const-string v1, "collapse_key"

    .line 27
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "do_not_collapse"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 29
    iput-object v1, p0, Lcom/shabakaty/downloader/c33;->w:Ljava/lang/String;

    .line 30
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/c33;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Error assigning OSNotificationReceivedEvent.actionButtons values!"

    .line 31
    invoke-static {v0, v2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :goto_0
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/c33;->d(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    const-string v1, "Error assigning OSNotificationReceivedEvent.backgroundImageLayout values!"

    .line 33
    invoke-static {v0, v1, p2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_2
    move-exception p2

    const-string v1, "Error assigning OSNotificationReceivedEvent payload values!"

    .line 34
    invoke-static {v0, v1, p2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :goto_1
    iput-object p1, p0, Lcom/shabakaty/downloader/c33;->b:Ljava/util/List;

    .line 36
    iput p3, p0, Lcom/shabakaty/downloader/c33;->c:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, p1, v1}, Lcom/shabakaty/downloader/c33;-><init>(Ljava/util/List;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/c33;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/c33;->a:Lcom/shabakaty/downloader/o03;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/c33;->b:Ljava/util/List;

    .line 3
    iget v3, v0, Lcom/shabakaty/downloader/c33;->c:I

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/c33;->d:Ljava/lang/String;

    .line 5
    iget-object v5, v0, Lcom/shabakaty/downloader/c33;->e:Ljava/lang/String;

    .line 6
    iget-object v6, v0, Lcom/shabakaty/downloader/c33;->f:Ljava/lang/String;

    .line 7
    iget-object v7, v0, Lcom/shabakaty/downloader/c33;->g:Ljava/lang/String;

    .line 8
    iget-object v8, v0, Lcom/shabakaty/downloader/c33;->h:Ljava/lang/String;

    .line 9
    iget-object v9, v0, Lcom/shabakaty/downloader/c33;->i:Lorg/json/JSONObject;

    .line 10
    iget-object v10, v0, Lcom/shabakaty/downloader/c33;->j:Ljava/lang/String;

    .line 11
    iget-object v11, v0, Lcom/shabakaty/downloader/c33;->k:Ljava/lang/String;

    .line 12
    iget-object v12, v0, Lcom/shabakaty/downloader/c33;->l:Ljava/lang/String;

    .line 13
    iget-object v13, v0, Lcom/shabakaty/downloader/c33;->m:Ljava/lang/String;

    .line 14
    iget-object v14, v0, Lcom/shabakaty/downloader/c33;->n:Ljava/lang/String;

    .line 15
    iget-object v15, v0, Lcom/shabakaty/downloader/c33;->o:Ljava/lang/String;

    move-object/from16 v16, v15

    .line 16
    iget-object v15, v0, Lcom/shabakaty/downloader/c33;->p:Ljava/lang/String;

    move-object/from16 v17, v15

    .line 17
    iget v15, v0, Lcom/shabakaty/downloader/c33;->q:I

    move/from16 v18, v15

    .line 18
    iget-object v15, v0, Lcom/shabakaty/downloader/c33;->r:Ljava/lang/String;

    move-object/from16 v19, v15

    .line 19
    iget-object v15, v0, Lcom/shabakaty/downloader/c33;->s:Ljava/lang/String;

    move-object/from16 v20, v15

    .line 20
    iget-object v15, v0, Lcom/shabakaty/downloader/c33;->t:Ljava/util/List;

    move-object/from16 v21, v15

    .line 21
    iget-object v15, v0, Lcom/shabakaty/downloader/c33;->u:Ljava/lang/String;

    move-object/from16 v22, v15

    .line 22
    iget-object v15, v0, Lcom/shabakaty/downloader/c33;->v:Lcom/shabakaty/downloader/c33$b;

    move-object/from16 v23, v15

    .line 23
    iget-object v15, v0, Lcom/shabakaty/downloader/c33;->w:Ljava/lang/String;

    move-object/from16 v24, v15

    .line 24
    iget v15, v0, Lcom/shabakaty/downloader/c33;->x:I

    move/from16 v25, v15

    .line 25
    iget-object v15, v0, Lcom/shabakaty/downloader/c33;->y:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/shabakaty/downloader/c33;

    invoke-direct {v0}, Lcom/shabakaty/downloader/c33;-><init>()V

    .line 27
    iput-object v1, v0, Lcom/shabakaty/downloader/c33;->a:Lcom/shabakaty/downloader/o03;

    .line 28
    iput-object v2, v0, Lcom/shabakaty/downloader/c33;->b:Ljava/util/List;

    .line 29
    iput v3, v0, Lcom/shabakaty/downloader/c33;->c:I

    .line 30
    iput-object v4, v0, Lcom/shabakaty/downloader/c33;->d:Ljava/lang/String;

    .line 31
    iput-object v5, v0, Lcom/shabakaty/downloader/c33;->e:Ljava/lang/String;

    .line 32
    iput-object v6, v0, Lcom/shabakaty/downloader/c33;->f:Ljava/lang/String;

    .line 33
    iput-object v7, v0, Lcom/shabakaty/downloader/c33;->g:Ljava/lang/String;

    .line 34
    iput-object v8, v0, Lcom/shabakaty/downloader/c33;->h:Ljava/lang/String;

    .line 35
    iput-object v9, v0, Lcom/shabakaty/downloader/c33;->i:Lorg/json/JSONObject;

    .line 36
    iput-object v10, v0, Lcom/shabakaty/downloader/c33;->j:Ljava/lang/String;

    .line 37
    iput-object v11, v0, Lcom/shabakaty/downloader/c33;->k:Ljava/lang/String;

    .line 38
    iput-object v12, v0, Lcom/shabakaty/downloader/c33;->l:Ljava/lang/String;

    .line 39
    iput-object v13, v0, Lcom/shabakaty/downloader/c33;->m:Ljava/lang/String;

    .line 40
    iput-object v14, v0, Lcom/shabakaty/downloader/c33;->n:Ljava/lang/String;

    move-object/from16 v1, v16

    .line 41
    iput-object v1, v0, Lcom/shabakaty/downloader/c33;->o:Ljava/lang/String;

    move-object/from16 v1, v17

    .line 42
    iput-object v1, v0, Lcom/shabakaty/downloader/c33;->p:Ljava/lang/String;

    move/from16 v1, v18

    .line 43
    iput v1, v0, Lcom/shabakaty/downloader/c33;->q:I

    move-object/from16 v1, v19

    .line 44
    iput-object v1, v0, Lcom/shabakaty/downloader/c33;->r:Ljava/lang/String;

    move-object/from16 v1, v20

    .line 45
    iput-object v1, v0, Lcom/shabakaty/downloader/c33;->s:Ljava/lang/String;

    move-object/from16 v1, v21

    .line 46
    iput-object v1, v0, Lcom/shabakaty/downloader/c33;->t:Ljava/util/List;

    move-object/from16 v1, v22

    .line 47
    iput-object v1, v0, Lcom/shabakaty/downloader/c33;->u:Ljava/lang/String;

    move-object/from16 v1, v23

    .line 48
    iput-object v1, v0, Lcom/shabakaty/downloader/c33;->v:Lcom/shabakaty/downloader/c33$b;

    move-object/from16 v1, v24

    .line 49
    iput-object v1, v0, Lcom/shabakaty/downloader/c33;->w:Ljava/lang/String;

    move/from16 v1, v25

    .line 50
    iput v1, v0, Lcom/shabakaty/downloader/c33;->x:I

    .line 51
    iput-object v15, v0, Lcom/shabakaty/downloader/c33;->y:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/c33;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/c33;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    const-string v1, "actionButtons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/c33;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/shabakaty/downloader/c33;->t:Ljava/util/List;

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/c33$a;

    invoke-direct {v4}, Lcom/shabakaty/downloader/c33$a;-><init>()V

    const-string v5, "id"

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "text"

    .line 8
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "icon"

    .line 9
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lcom/shabakaty/downloader/c33;->t:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/c33;->i:Lorg/json/JSONObject;

    const-string v2, "actionId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/c33;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final d(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "bg_img"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/c33$b;

    invoke-direct {p1}, Lcom/shabakaty/downloader/c33$b;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/c33;->v:Lcom/shabakaty/downloader/c33$b;

    const-string p1, "img"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/c33;->v:Lcom/shabakaty/downloader/c33$b;

    const-string v1, "tc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/c33;->v:Lcom/shabakaty/downloader/c33$b;

    const-string v1, "bc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "OSNotification{notificationExtender="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->a:Lcom/shabakaty/downloader/o03;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", groupedNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidNotificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/c33;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->d:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", templateName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->e:Ljava/lang/String;

    const-string v3, ", templateId=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->f:Ljava/lang/String;

    const-string v3, ", title=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->g:Ljava/lang/String;

    const-string v3, ", body=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->h:Ljava/lang/String;

    const-string v3, ", additionalData="

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", smallIcon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->j:Ljava/lang/String;

    const-string v3, ", largeIcon=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->k:Ljava/lang/String;

    const-string v3, ", bigPicture=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->l:Ljava/lang/String;

    const-string v3, ", smallIconAccentColor=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->m:Ljava/lang/String;

    const-string v3, ", launchURL=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->n:Ljava/lang/String;

    const-string v3, ", sound=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->o:Ljava/lang/String;

    const-string v3, ", ledColor=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->p:Ljava/lang/String;

    const-string v3, ", lockScreenVisibility="

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/shabakaty/downloader/c33;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groupKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->r:Ljava/lang/String;

    const-string v3, ", groupMessage=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->s:Ljava/lang/String;

    const-string v3, ", actionButtons="

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromProjectNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->u:Ljava/lang/String;

    const-string v3, ", backgroundImageLayout="

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->v:Lcom/shabakaty/downloader/c33$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collapseId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->w:Ljava/lang/String;

    const-string v3, ", priority="

    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/gk4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/shabakaty/downloader/c33;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rawPayload=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/c33;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
