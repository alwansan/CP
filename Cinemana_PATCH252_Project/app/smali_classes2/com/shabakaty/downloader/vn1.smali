.class public final enum Lcom/shabakaty/downloader/vn1;
.super Ljava/lang/Enum;
.source "FunctionClassKind.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/vn1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/vn1;",
        ">;"
    }
.end annotation


# static fields
.field public static final t:Lcom/shabakaty/downloader/vn1$a;

.field public static final enum u:Lcom/shabakaty/downloader/vn1;

.field public static final enum v:Lcom/shabakaty/downloader/vn1;

.field public static final enum w:Lcom/shabakaty/downloader/vn1;

.field public static final enum x:Lcom/shabakaty/downloader/vn1;

.field public static final synthetic y:[Lcom/shabakaty/downloader/vn1;


# instance fields
.field public final r:Lcom/shabakaty/downloader/fi1;

.field public final s:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/vn1;

    sget-object v3, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    const-string v1, "Function"

    const/4 v2, 0x0

    const-string v4, "Function"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/vn1;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/fi1;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/shabakaty/downloader/vn1;->u:Lcom/shabakaty/downloader/vn1;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/vn1;

    sget-object v11, Lcom/shabakaty/downloader/tb4;->c:Lcom/shabakaty/downloader/fi1;

    const-string v9, "SuspendFunction"

    const/4 v10, 0x1

    const-string v12, "SuspendFunction"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/vn1;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/fi1;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/shabakaty/downloader/vn1;->v:Lcom/shabakaty/downloader/vn1;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/vn1;

    sget-object v11, Lcom/shabakaty/downloader/tb4;->f:Lcom/shabakaty/downloader/fi1;

    const-string v16, "KFunction"

    const/16 v17, 0x2

    const-string v19, "KFunction"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v15, v1

    move-object/from16 v18, v11

    invoke-direct/range {v15 .. v21}, Lcom/shabakaty/downloader/vn1;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/fi1;Ljava/lang/String;ZZ)V

    sput-object v1, Lcom/shabakaty/downloader/vn1;->w:Lcom/shabakaty/downloader/vn1;

    .line 4
    new-instance v2, Lcom/shabakaty/downloader/vn1;

    const-string v9, "KSuspendFunction"

    const/4 v10, 0x3

    const-string v12, "KSuspendFunction"

    const/4 v14, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/shabakaty/downloader/vn1;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/fi1;Ljava/lang/String;ZZ)V

    sput-object v2, Lcom/shabakaty/downloader/vn1;->x:Lcom/shabakaty/downloader/vn1;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/shabakaty/downloader/vn1;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    sput-object v3, Lcom/shabakaty/downloader/vn1;->y:[Lcom/shabakaty/downloader/vn1;

    new-instance v0, Lcom/shabakaty/downloader/vn1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/vn1$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/vn1;->t:Lcom/shabakaty/downloader/vn1$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/shabakaty/downloader/fi1;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fi1;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/vn1;->r:Lcom/shabakaty/downloader/fi1;

    .line 3
    iput-object p4, p0, Lcom/shabakaty/downloader/vn1;->s:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/vn1;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/vn1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/vn1;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/vn1;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/vn1;->y:[Lcom/shabakaty/downloader/vn1;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/vn1;

    return-object v0
.end method


# virtual methods
.method public final f(I)Lcom/shabakaty/downloader/hw2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vn1;->s:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object p1

    return-object p1
.end method
