.class public Lzendesk/support/ApplicationScope;
.super Ljava/lang/Object;
.source "ApplicationScope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/ApplicationScope$Builder;
    }
.end annotation


# instance fields
.field public final locale:Ljava/util/Locale;

.field public final zendeskTracker:Lzendesk/support/ZendeskTracker;


# direct methods
.method public constructor <init>(Lzendesk/support/ApplicationScope$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lzendesk/support/ApplicationScope$Builder;->access$000(Lzendesk/support/ApplicationScope$Builder;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/ApplicationScope;->locale:Ljava/util/Locale;

    .line 4
    invoke-static {p1}, Lzendesk/support/ApplicationScope$Builder;->access$100(Lzendesk/support/ApplicationScope$Builder;)Lzendesk/support/ZendeskTracker;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/ApplicationScope;->zendeskTracker:Lzendesk/support/ZendeskTracker;

    return-void
.end method

.method public synthetic constructor <init>(Lzendesk/support/ApplicationScope$Builder;Lzendesk/support/ApplicationScope$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/ApplicationScope;-><init>(Lzendesk/support/ApplicationScope$Builder;)V

    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/ApplicationScope;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getZendeskTracker()Lzendesk/support/ZendeskTracker;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/ApplicationScope;->zendeskTracker:Lzendesk/support/ZendeskTracker;

    return-object v0
.end method
