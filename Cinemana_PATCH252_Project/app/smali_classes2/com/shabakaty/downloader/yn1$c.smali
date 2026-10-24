.class public Lcom/shabakaty/downloader/yn1$c;
.super Ljava/lang/Object;
.source "FunctionDescriptorImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/xn1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/yn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/xn1$a<",
        "Lcom/shabakaty/downloader/xn1;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/tt4;

.field public b:Lcom/shabakaty/downloader/qm0;

.field public c:Lcom/shabakaty/downloader/eu2;

.field public d:Lcom/shabakaty/downloader/mr0;

.field public e:Lcom/shabakaty/downloader/xn1;

.field public f:Lcom/shabakaty/downloader/tq$a;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz4;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/shabakaty/downloader/ao3;

.field public i:Lcom/shabakaty/downloader/ao3;

.field public j:Lcom/shabakaty/downloader/qe2;

.field public k:Lcom/shabakaty/downloader/hw2;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/shabakaty/downloader/d9;

.field public s:Z

.field public t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/rq$a<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/Boolean;

.field public v:Z

.field public final synthetic w:Lcom/shabakaty/downloader/yn1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yn1;Lcom/shabakaty/downloader/tt4;Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/tq$a;Ljava/util/List;Lcom/shabakaty/downloader/ao3;Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/hw2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tt4;",
            "Lcom/shabakaty/downloader/qm0;",
            "Lcom/shabakaty/downloader/eu2;",
            "Lcom/shabakaty/downloader/mr0;",
            "Lcom/shabakaty/downloader/tq$a;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sz4;",
            ">;",
            "Lcom/shabakaty/downloader/ao3;",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/hw2;",
            ")V"
        }
    .end annotation

    const/4 p10, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    if-eqz p6, :cond_2

    if-eqz p7, :cond_1

    if-eqz p9, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->w:Lcom/shabakaty/downloader/yn1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p10, p0, Lcom/shabakaty/downloader/yn1$c;->e:Lcom/shabakaty/downloader/xn1;

    .line 3
    iget-object v2, p1, Lcom/shabakaty/downloader/yn1;->z:Lcom/shabakaty/downloader/ao3;

    .line 4
    iput-object v2, p0, Lcom/shabakaty/downloader/yn1$c;->i:Lcom/shabakaty/downloader/ao3;

    .line 5
    iput-boolean v1, p0, Lcom/shabakaty/downloader/yn1$c;->l:Z

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn1$c;->m:Z

    .line 7
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn1$c;->n:Z

    .line 8
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn1$c;->o:Z

    .line 9
    iget-boolean v1, p1, Lcom/shabakaty/downloader/yn1;->J:Z

    .line 10
    iput-boolean v1, p0, Lcom/shabakaty/downloader/yn1$c;->p:Z

    .line 11
    iput-object p10, p0, Lcom/shabakaty/downloader/yn1$c;->q:Ljava/util/List;

    .line 12
    iput-object p10, p0, Lcom/shabakaty/downloader/yn1$c;->r:Lcom/shabakaty/downloader/d9;

    .line 13
    iget-boolean p1, p1, Lcom/shabakaty/downloader/yn1;->K:Z

    .line 14
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yn1$c;->s:Z

    .line 15
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->t:Ljava/util/Map;

    .line 16
    iput-object p10, p0, Lcom/shabakaty/downloader/yn1$c;->u:Ljava/lang/Boolean;

    .line 17
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn1$c;->v:Z

    .line 18
    iput-object p2, p0, Lcom/shabakaty/downloader/yn1$c;->a:Lcom/shabakaty/downloader/tt4;

    .line 19
    iput-object p3, p0, Lcom/shabakaty/downloader/yn1$c;->b:Lcom/shabakaty/downloader/qm0;

    .line 20
    iput-object p4, p0, Lcom/shabakaty/downloader/yn1$c;->c:Lcom/shabakaty/downloader/eu2;

    .line 21
    iput-object p5, p0, Lcom/shabakaty/downloader/yn1$c;->d:Lcom/shabakaty/downloader/mr0;

    .line 22
    iput-object p6, p0, Lcom/shabakaty/downloader/yn1$c;->f:Lcom/shabakaty/downloader/tq$a;

    .line 23
    iput-object p7, p0, Lcom/shabakaty/downloader/yn1$c;->g:Ljava/util/List;

    .line 24
    iput-object p8, p0, Lcom/shabakaty/downloader/yn1$c;->h:Lcom/shabakaty/downloader/ao3;

    .line 25
    iput-object p9, p0, Lcom/shabakaty/downloader/yn1$c;->j:Lcom/shabakaty/downloader/qe2;

    .line 26
    iput-object p10, p0, Lcom/shabakaty/downloader/yn1$c;->k:Lcom/shabakaty/downloader/hw2;

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 27
    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    throw p10

    :cond_1
    const/4 p1, 0x5

    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    throw p10

    :cond_2
    const/4 p1, 0x4

    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    throw p10

    :cond_3
    const/4 p1, 0x3

    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    throw p10

    :cond_4
    const/4 p1, 0x2

    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    throw p10

    :cond_5
    invoke-static {v1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    throw p10

    :cond_6
    invoke-static {v0}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    throw p10
.end method

.method public static synthetic s(I)V
    .locals 16

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    :pswitch_4
    const-string v5, "substitution"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "userDataKey"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "additionalAnnotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "type"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "parameters"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_c
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_d
    const-string v5, "owner"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_e
    const-string v5, "newReturnType"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_f
    const-string v5, "newValueParameterDescriptors"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_10
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_11
    const-string v5, "newVisibility"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_12
    const-string v5, "newModality"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_13
    const-string v5, "newOwner"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "putUserData"

    const-string v5, "setSubstitution"

    const-string v6, "setAdditionalAnnotations"

    const-string v7, "setReturnType"

    const-string v8, "setTypeParameters"

    const-string v9, "setValueParameters"

    const-string v10, "setName"

    const-string v11, "setKind"

    const-string v12, "setVisibility"

    const-string v13, "setModality"

    const-string v14, "setOwner"

    const/4 v15, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_14
    aput-object v3, v2, v15

    goto/16 :goto_3

    :pswitch_15
    const-string v3, "setJustForTypeSubstitution"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_16
    const-string v3, "getSubstitution"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_17
    aput-object v4, v2, v15

    goto :goto_3

    :pswitch_18
    aput-object v5, v2, v15

    goto :goto_3

    :pswitch_19
    aput-object v6, v2, v15

    goto :goto_3

    :pswitch_1a
    const-string v3, "setHiddenForResolutionEverywhereBesideSupercalls"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_1b
    const-string v3, "setHiddenToOvercomeSignatureClash"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_1c
    const-string v3, "setDropOriginalInContainingParts"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_1d
    const-string v3, "setPreserveSourceElement"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_1e
    const-string v3, "setSignatureChange"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_1f
    const-string v3, "setOriginal"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_20
    const-string v3, "setDispatchReceiverParameter"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_21
    const-string v3, "setExtensionReceiverParameter"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_22
    aput-object v7, v2, v15

    goto :goto_3

    :pswitch_23
    aput-object v8, v2, v15

    goto :goto_3

    :pswitch_24
    aput-object v9, v2, v15

    goto :goto_3

    :pswitch_25
    aput-object v10, v2, v15

    goto :goto_3

    :pswitch_26
    const-string v3, "setCopyOverrides"

    aput-object v3, v2, v15

    goto :goto_3

    :pswitch_27
    aput-object v11, v2, v15

    goto :goto_3

    :pswitch_28
    aput-object v12, v2, v15

    goto :goto_3

    :pswitch_29
    aput-object v13, v2, v15

    goto :goto_3

    :pswitch_2a
    aput-object v14, v2, v15

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_2b
    aput-object v4, v2, v1

    goto :goto_4

    :pswitch_2c
    aput-object v5, v2, v1

    goto :goto_4

    :pswitch_2d
    aput-object v6, v2, v1

    goto :goto_4

    :pswitch_2e
    aput-object v7, v2, v1

    goto :goto_4

    :pswitch_2f
    aput-object v8, v2, v1

    goto :goto_4

    :pswitch_30
    aput-object v9, v2, v1

    goto :goto_4

    :pswitch_31
    aput-object v10, v2, v1

    goto :goto_4

    :pswitch_32
    aput-object v11, v2, v1

    goto :goto_4

    :pswitch_33
    aput-object v12, v2, v1

    goto :goto_4

    :pswitch_34
    aput-object v13, v2, v1

    goto :goto_4

    :pswitch_35
    aput-object v14, v2, v1

    :goto_4
    :pswitch_36
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_38
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_c
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_6
        :pswitch_c
        :pswitch_4
        :pswitch_c
        :pswitch_5
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_2a
        :pswitch_14
        :pswitch_29
        :pswitch_14
        :pswitch_28
        :pswitch_14
        :pswitch_27
        :pswitch_26
        :pswitch_14
        :pswitch_25
        :pswitch_14
        :pswitch_24
        :pswitch_14
        :pswitch_23
        :pswitch_14
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_14
        :pswitch_19
        :pswitch_14
        :pswitch_18
        :pswitch_14
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_35
        :pswitch_36
        :pswitch_34
        :pswitch_36
        :pswitch_33
        :pswitch_36
        :pswitch_32
        :pswitch_36
        :pswitch_36
        :pswitch_31
        :pswitch_36
        :pswitch_30
        :pswitch_36
        :pswitch_2f
        :pswitch_36
        :pswitch_2e
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_2d
        :pswitch_36
        :pswitch_2c
        :pswitch_36
        :pswitch_2b
        :pswitch_36
        :pswitch_36
        :pswitch_36
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_37
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->g:Ljava/util/List;

    return-object p0
.end method

.method public b(Lcom/shabakaty/downloader/tq$a;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->f:Lcom/shabakaty/downloader/tq$a;

    return-object p0

    :cond_0
    const/16 p1, 0xd

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public build()Lcom/shabakaty/downloader/xn1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yn1$c;->w:Lcom/shabakaty/downloader/yn1;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/yn1;->U0(Lcom/shabakaty/downloader/yn1$c;)Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->j:Lcom/shabakaty/downloader/qe2;

    return-object p0

    :cond_0
    const/16 p1, 0x16

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d()Lcom/shabakaty/downloader/xn1$a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn1$c;->n:Z

    return-object p0
.end method

.method public e(Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->d:Lcom/shabakaty/downloader/mr0;

    return-object p0

    :cond_0
    const/16 p1, 0xb

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public f(Lcom/shabakaty/downloader/eu2;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->c:Lcom/shabakaty/downloader/eu2;

    return-object p0

    :cond_0
    const/16 p1, 0x9

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Lcom/shabakaty/downloader/ao3;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->i:Lcom/shabakaty/downloader/ao3;

    return-object p0
.end method

.method public h()Lcom/shabakaty/downloader/xn1$a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn1$c;->s:Z

    return-object p0
.end method

.method public i(Z)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/yn1$c;->l:Z

    return-object p0
.end method

.method public j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->b:Lcom/shabakaty/downloader/qm0;

    return-object p0

    :cond_0
    const/4 p1, 0x7

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public k(Ljava/util/List;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->q:Ljava/util/List;

    return-object p0
.end method

.method public l(Lcom/shabakaty/downloader/tt4;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->a:Lcom/shabakaty/downloader/tt4;

    return-object p0

    :cond_0
    const/16 p1, 0x22

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public m(Lcom/shabakaty/downloader/hw2;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->k:Lcom/shabakaty/downloader/hw2;

    return-object p0

    :cond_0
    const/16 p1, 0x10

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public n()Lcom/shabakaty/downloader/xn1$a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn1$c;->p:Z

    return-object p0
.end method

.method public o(Lcom/shabakaty/downloader/rq$a;Ljava/lang/Object;)Lcom/shabakaty/downloader/xn1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/rq$a<",
            "TV;>;TV;)",
            "Lcom/shabakaty/downloader/xn1$a<",
            "Lcom/shabakaty/downloader/xn1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yn1$c;->t:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public p(Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->r:Lcom/shabakaty/downloader/d9;

    return-object p0

    :cond_0
    const/16 p1, 0x20

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/yn1$c;->s(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public q(Lcom/shabakaty/downloader/tq;)Lcom/shabakaty/downloader/xn1$a;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xn1;

    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$c;->e:Lcom/shabakaty/downloader/xn1;

    return-object p0
.end method

.method public r()Lcom/shabakaty/downloader/xn1$a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yn1$c;->m:Z

    return-object p0
.end method
