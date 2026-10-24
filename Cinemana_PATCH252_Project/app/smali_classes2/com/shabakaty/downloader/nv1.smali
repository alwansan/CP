.class public abstract enum Lcom/shabakaty/downloader/nv1;
.super Ljava/lang/Enum;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/nv1$x;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/nv1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/nv1;

.field public static final enum B:Lcom/shabakaty/downloader/nv1;

.field public static final enum C:Lcom/shabakaty/downloader/nv1;

.field public static final enum D:Lcom/shabakaty/downloader/nv1;

.field public static final enum E:Lcom/shabakaty/downloader/nv1;

.field public static final enum F:Lcom/shabakaty/downloader/nv1;

.field public static final enum G:Lcom/shabakaty/downloader/nv1;

.field public static final enum H:Lcom/shabakaty/downloader/nv1;

.field public static final enum I:Lcom/shabakaty/downloader/nv1;

.field public static final enum J:Lcom/shabakaty/downloader/nv1;

.field public static final enum K:Lcom/shabakaty/downloader/nv1;

.field public static final enum L:Lcom/shabakaty/downloader/nv1;

.field public static final enum M:Lcom/shabakaty/downloader/nv1;

.field public static N:Ljava/lang/String;

.field public static final synthetic O:[Lcom/shabakaty/downloader/nv1;

.field public static final enum r:Lcom/shabakaty/downloader/nv1;

.field public static final enum s:Lcom/shabakaty/downloader/nv1;

.field public static final enum t:Lcom/shabakaty/downloader/nv1;

.field public static final enum u:Lcom/shabakaty/downloader/nv1;

.field public static final enum v:Lcom/shabakaty/downloader/nv1;

.field public static final enum w:Lcom/shabakaty/downloader/nv1;

.field public static final enum x:Lcom/shabakaty/downloader/nv1;

.field public static final enum y:Lcom/shabakaty/downloader/nv1;

.field public static final enum z:Lcom/shabakaty/downloader/nv1;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/nv1$k;

    const-string v1, "Initial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/nv1$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/nv1;->r:Lcom/shabakaty/downloader/nv1;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/nv1$p;

    const-string v3, "BeforeHtml"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/nv1$p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/nv1;->s:Lcom/shabakaty/downloader/nv1;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/nv1$q;

    const-string v5, "BeforeHead"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/nv1$q;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/nv1;->t:Lcom/shabakaty/downloader/nv1;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/nv1$r;

    const-string v7, "InHead"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/nv1$r;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/nv1;->u:Lcom/shabakaty/downloader/nv1;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/nv1$s;

    const-string v9, "InHeadNoscript"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shabakaty/downloader/nv1$s;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shabakaty/downloader/nv1;->v:Lcom/shabakaty/downloader/nv1;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/nv1$t;

    const-string v11, "AfterHead"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shabakaty/downloader/nv1$t;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shabakaty/downloader/nv1;->w:Lcom/shabakaty/downloader/nv1;

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/nv1$u;

    const-string v13, "InBody"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/shabakaty/downloader/nv1$u;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/shabakaty/downloader/nv1;->x:Lcom/shabakaty/downloader/nv1;

    .line 8
    new-instance v13, Lcom/shabakaty/downloader/nv1$v;

    const-string v15, "Text"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/shabakaty/downloader/nv1$v;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/shabakaty/downloader/nv1;->y:Lcom/shabakaty/downloader/nv1;

    .line 9
    new-instance v15, Lcom/shabakaty/downloader/nv1$w;

    const-string v14, "InTable"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/shabakaty/downloader/nv1$w;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/shabakaty/downloader/nv1;->z:Lcom/shabakaty/downloader/nv1;

    .line 10
    new-instance v14, Lcom/shabakaty/downloader/nv1$a;

    const-string v12, "InTableText"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/shabakaty/downloader/nv1$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/shabakaty/downloader/nv1;->A:Lcom/shabakaty/downloader/nv1;

    .line 11
    new-instance v12, Lcom/shabakaty/downloader/nv1$b;

    const-string v10, "InCaption"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/shabakaty/downloader/nv1$b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/shabakaty/downloader/nv1;->B:Lcom/shabakaty/downloader/nv1;

    .line 12
    new-instance v10, Lcom/shabakaty/downloader/nv1$c;

    const-string v8, "InColumnGroup"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/shabakaty/downloader/nv1$c;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/shabakaty/downloader/nv1;->C:Lcom/shabakaty/downloader/nv1;

    .line 13
    new-instance v8, Lcom/shabakaty/downloader/nv1$d;

    const-string v6, "InTableBody"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/shabakaty/downloader/nv1$d;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/shabakaty/downloader/nv1;->D:Lcom/shabakaty/downloader/nv1;

    .line 14
    new-instance v6, Lcom/shabakaty/downloader/nv1$e;

    const-string v4, "InRow"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/shabakaty/downloader/nv1$e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/shabakaty/downloader/nv1;->E:Lcom/shabakaty/downloader/nv1;

    .line 15
    new-instance v4, Lcom/shabakaty/downloader/nv1$f;

    const-string v2, "InCell"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/shabakaty/downloader/nv1$f;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/shabakaty/downloader/nv1;->F:Lcom/shabakaty/downloader/nv1;

    .line 16
    new-instance v2, Lcom/shabakaty/downloader/nv1$g;

    const-string v6, "InSelect"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/shabakaty/downloader/nv1$g;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/shabakaty/downloader/nv1;->G:Lcom/shabakaty/downloader/nv1;

    .line 17
    new-instance v6, Lcom/shabakaty/downloader/nv1$h;

    const-string v4, "InSelectInTable"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/shabakaty/downloader/nv1$h;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/shabakaty/downloader/nv1;->H:Lcom/shabakaty/downloader/nv1;

    .line 18
    new-instance v4, Lcom/shabakaty/downloader/nv1$i;

    const-string v2, "AfterBody"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/shabakaty/downloader/nv1$i;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/shabakaty/downloader/nv1;->I:Lcom/shabakaty/downloader/nv1;

    .line 19
    new-instance v2, Lcom/shabakaty/downloader/nv1$j;

    const-string v6, "InFrameset"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/shabakaty/downloader/nv1$j;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/shabakaty/downloader/nv1;->J:Lcom/shabakaty/downloader/nv1;

    .line 20
    new-instance v6, Lcom/shabakaty/downloader/nv1$l;

    const-string v4, "AfterFrameset"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/shabakaty/downloader/nv1$l;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/shabakaty/downloader/nv1;->K:Lcom/shabakaty/downloader/nv1;

    .line 21
    new-instance v4, Lcom/shabakaty/downloader/nv1$m;

    const-string v2, "AfterAfterBody"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/shabakaty/downloader/nv1$m;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/shabakaty/downloader/nv1;->L:Lcom/shabakaty/downloader/nv1;

    .line 22
    new-instance v2, Lcom/shabakaty/downloader/nv1$n;

    const-string v6, "AfterAfterFrameset"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/shabakaty/downloader/nv1$n;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/shabakaty/downloader/nv1;->M:Lcom/shabakaty/downloader/nv1;

    .line 23
    new-instance v6, Lcom/shabakaty/downloader/nv1$o;

    const-string v4, "ForeignContent"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/shabakaty/downloader/nv1$o;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x17

    new-array v2, v2, [Lcom/shabakaty/downloader/nv1;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v6, v2, v0

    .line 24
    sput-object v2, Lcom/shabakaty/downloader/nv1;->O:[Lcom/shabakaty/downloader/nv1;

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/nv1;->N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/shabakaty/downloader/nv1$k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static f(Lcom/shabakaty/downloader/zn4;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/zn4;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/shabakaty/downloader/zn4$c;

    .line 3
    iget-object p0, p0, Lcom/shabakaty/downloader/zn4$c;->b:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/shabakaty/downloader/de4;->c(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Lcom/shabakaty/downloader/zn4$h;Lcom/shabakaty/downloader/mv1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/cr4;->b:Lcom/shabakaty/downloader/co4;

    sget-object v1, Lcom/shabakaty/downloader/do4;->v:Lcom/shabakaty/downloader/do4;

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    iput-object v0, p1, Lcom/shabakaty/downloader/mv1;->l:Lcom/shabakaty/downloader/nv1;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/nv1;->y:Lcom/shabakaty/downloader/nv1;

    .line 5
    iput-object v0, p1, Lcom/shabakaty/downloader/mv1;->k:Lcom/shabakaty/downloader/nv1;

    .line 6
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/mv1;->v(Lcom/shabakaty/downloader/zn4$h;)Lcom/shabakaty/downloader/k21;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/nv1;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/nv1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/nv1;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/nv1;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/nv1;->O:[Lcom/shabakaty/downloader/nv1;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/nv1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/nv1;

    return-object v0
.end method


# virtual methods
.method public abstract j(Lcom/shabakaty/downloader/zn4;Lcom/shabakaty/downloader/mv1;)Z
.end method
