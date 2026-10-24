.class public Lcom/facebook/login/KatanaProxyLoginMethodHandler;
.super Lcom/facebook/login/NativeAppLoginMethodHandler;
.source "KatanaProxyLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/KatanaProxyLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "katana_proxy_auth"

    return-object v0
.end method

.method public j(Lcom/facebook/login/LoginClient$Request;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/facebook/login/LoginClient$Request;->r:Lcom/facebook/login/LoginBehavior;

    .line 2
    sget-boolean v3, Lcom/facebook/FacebookSdk;->n:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 3
    invoke-static {}, Lcom/facebook/internal/CustomTabUtils;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    iget-boolean v2, v2, Lcom/facebook/login/LoginBehavior;->v:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->g()Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v6, v0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 7
    invoke-virtual {v6}, Lcom/facebook/login/LoginClient;->e()Lcom/shabakaty/downloader/ji1;

    .line 8
    iget-object v15, v1, Lcom/facebook/login/LoginClient$Request;->u:Ljava/lang/String;

    .line 9
    iget-object v14, v1, Lcom/facebook/login/LoginClient$Request;->s:Ljava/util/Set;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->a()Z

    move-result v16

    .line 11
    iget-object v13, v1, Lcom/facebook/login/LoginClient$Request;->t:Lcom/facebook/login/DefaultAudience;

    .line 12
    iget-object v6, v1, Lcom/facebook/login/LoginClient$Request;->v:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v6}, Lcom/facebook/login/LoginMethodHandler;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 14
    iget-object v1, v1, Lcom/facebook/login/LoginClient$Request;->y:Ljava/lang/String;

    .line 15
    sget-object v6, Lcom/facebook/internal/NativeProtocol;->a:Ljava/util/List;

    .line 16
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sget-object v6, Lcom/facebook/internal/NativeProtocol;->a:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    move-object v7, v15

    move-object v8, v14

    move-object v9, v3

    move/from16 v10, v16

    move-object v11, v13

    move-object v4, v12

    move-object/from16 v12, v17

    move-object/from16 v19, v13

    move-object v13, v1

    move-object/from16 v20, v14

    move v14, v2

    .line 18
    invoke-static/range {v6 .. v14}, Lcom/facebook/internal/NativeProtocol;->b(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 19
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v12, v4

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    goto :goto_1

    :cond_2
    move-object v4, v12

    const-string v1, "e2e"

    .line 20
    invoke-virtual {v0, v1, v3}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 21
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 22
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-static {}, Lcom/facebook/login/LoginClient;->j()I

    move-result v3

    if-nez v2, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    :try_start_0
    iget-object v6, v0, Lcom/facebook/login/LoginMethodHandler;->s:Lcom/facebook/login/LoginClient;

    .line 24
    iget-object v6, v6, Lcom/facebook/login/LoginClient;->t:Landroidx/fragment/app/Fragment;

    .line 25
    invoke-virtual {v6, v2, v3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_4

    :catch_0
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_4

    add-int/2addr v1, v5

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/facebook/login/LoginMethodHandler;->r:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->H(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
