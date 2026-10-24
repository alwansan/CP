.class public final enum Lcom/facebook/login/LoginBehavior;
.super Ljava/lang/Enum;
.source "LoginBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/LoginBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum x:Lcom/facebook/login/LoginBehavior;

.field public static final synthetic y:[Lcom/facebook/login/LoginBehavior;


# instance fields
.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v9, Lcom/facebook/login/LoginBehavior;

    const-string v1, "NATIVE_WITH_FALLBACK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v9, Lcom/facebook/login/LoginBehavior;->x:Lcom/facebook/login/LoginBehavior;

    .line 2
    new-instance v0, Lcom/facebook/login/LoginBehavior;

    const-string v11, "NATIVE_ONLY"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    .line 3
    new-instance v1, Lcom/facebook/login/LoginBehavior;

    const-string v20, "KATANA_ONLY"

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v27}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    .line 4
    new-instance v2, Lcom/facebook/login/LoginBehavior;

    const-string v11, "WEB_ONLY"

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    .line 5
    new-instance v3, Lcom/facebook/login/LoginBehavior;

    const-string v20, "WEB_VIEW_ONLY"

    const/16 v21, 0x4

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v27}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    .line 6
    new-instance v4, Lcom/facebook/login/LoginBehavior;

    const-string v11, "DIALOG_ONLY"

    const/4 v12, 0x5

    const/4 v14, 0x1

    const/16 v18, 0x1

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    .line 7
    new-instance v5, Lcom/facebook/login/LoginBehavior;

    const-string v20, "DEVICE_AUTH"

    const/16 v21, 0x6

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v27}, Lcom/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    const/4 v6, 0x7

    new-array v6, v6, [Lcom/facebook/login/LoginBehavior;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v2, v6, v0

    const/4 v0, 0x4

    aput-object v3, v6, v0

    const/4 v0, 0x5

    aput-object v4, v6, v0

    const/4 v0, 0x6

    aput-object v5, v6, v0

    .line 8
    sput-object v6, Lcom/facebook/login/LoginBehavior;->y:[Lcom/facebook/login/LoginBehavior;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/facebook/login/LoginBehavior;->r:Z

    .line 3
    iput-boolean p4, p0, Lcom/facebook/login/LoginBehavior;->s:Z

    .line 4
    iput-boolean p5, p0, Lcom/facebook/login/LoginBehavior;->t:Z

    .line 5
    iput-boolean p6, p0, Lcom/facebook/login/LoginBehavior;->u:Z

    .line 6
    iput-boolean p7, p0, Lcom/facebook/login/LoginBehavior;->v:Z

    .line 7
    iput-boolean p8, p0, Lcom/facebook/login/LoginBehavior;->w:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/LoginBehavior;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/login/LoginBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/login/LoginBehavior;

    return-object p0
.end method

.method public static values()[Lcom/facebook/login/LoginBehavior;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/LoginBehavior;->y:[Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0}, [Lcom/facebook/login/LoginBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method
