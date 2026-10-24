.class public final enum Lcom/shabakaty/usermanagement/utils/LoginState;
.super Ljava/lang/Enum;
.source "LoginState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/usermanagement/utils/LoginState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/usermanagement/utils/LoginState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/shabakaty/usermanagement/utils/LoginState;",
        "",
        "",
        "id",
        "I",
        "getId",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Companion",
        "LOGGED_OUT",
        "LOGGED_IN",
        "ZOMBIE",
        "usermanagement_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/shabakaty/usermanagement/utils/LoginState;

.field public static final Companion:Lcom/shabakaty/usermanagement/utils/LoginState$Companion;

.field public static final enum LOGGED_IN:Lcom/shabakaty/usermanagement/utils/LoginState;

.field public static final enum LOGGED_OUT:Lcom/shabakaty/usermanagement/utils/LoginState;

.field public static final enum ZOMBIE:Lcom/shabakaty/usermanagement/utils/LoginState;


# instance fields
.field public final id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shabakaty/usermanagement/utils/LoginState;

    new-instance v1, Lcom/shabakaty/usermanagement/utils/LoginState;

    const-string v2, "LOGGED_OUT"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Lcom/shabakaty/usermanagement/utils/LoginState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_OUT:Lcom/shabakaty/usermanagement/utils/LoginState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/utils/LoginState;

    const-string v2, "LOGGED_IN"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/shabakaty/usermanagement/utils/LoginState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/usermanagement/utils/LoginState;->LOGGED_IN:Lcom/shabakaty/usermanagement/utils/LoginState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/usermanagement/utils/LoginState;

    const-string v2, "ZOMBIE"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v3}, Lcom/shabakaty/usermanagement/utils/LoginState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/usermanagement/utils/LoginState;->ZOMBIE:Lcom/shabakaty/usermanagement/utils/LoginState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/shabakaty/usermanagement/utils/LoginState;->$VALUES:[Lcom/shabakaty/usermanagement/utils/LoginState;

    new-instance v0, Lcom/shabakaty/usermanagement/utils/LoginState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/usermanagement/utils/LoginState$Companion;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/usermanagement/utils/LoginState;->Companion:Lcom/shabakaty/usermanagement/utils/LoginState$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/shabakaty/usermanagement/utils/LoginState;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/usermanagement/utils/LoginState;
    .locals 1

    const-class v0, Lcom/shabakaty/usermanagement/utils/LoginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/usermanagement/utils/LoginState;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/usermanagement/utils/LoginState;
    .locals 1

    sget-object v0, Lcom/shabakaty/usermanagement/utils/LoginState;->$VALUES:[Lcom/shabakaty/usermanagement/utils/LoginState;

    invoke-virtual {v0}, [Lcom/shabakaty/usermanagement/utils/LoginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/usermanagement/utils/LoginState;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/usermanagement/utils/LoginState;->id:I

    return v0
.end method
