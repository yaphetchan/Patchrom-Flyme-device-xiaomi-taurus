.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$CredentialUtil;,
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFirstCallToVold:Z

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mStorage:Lcom/android/server/LockSettingsStorage;


# direct methods
.method static synthetic -get0(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/LockSettingsService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 760
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 761
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    .line 762
    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    .line 763
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    .line 764
    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v6

    .line 765
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 766
    const-string/jumbo v1, "lockscreen.password_salt"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 767
    const-string/jumbo v1, "lockscreen.disabled"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 768
    const-string/jumbo v1, "lockscreen.options"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 769
    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 770
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 771
    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 772
    const-string/jumbo v1, "lockscreen.passwordhistory"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 773
    const-string/jumbo v1, "lock_pattern_autolock"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 774
    const-string/jumbo v1, "lock_biometric_weak_flags"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 775
    const-string/jumbo v1, "lock_pattern_visible_pattern"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 776
    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 760
    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 780
    new-array v0, v5, [Ljava/lang/String;

    .line 781
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    .line 782
    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    .line 780
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 786
    new-array v0, v6, [Ljava/lang/String;

    .line 787
    const-string/jumbo v1, "lockscreen.password_salt"

    aput-object v1, v0, v3

    .line 788
    const-string/jumbo v1, "lockscreen.passwordhistory"

    aput-object v1, v0, v4

    .line 789
    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v5

    .line 786
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 792
    new-array v0, v5, [Ljava/lang/String;

    .line 793
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    .line 794
    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    .line 792
    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 117
    new-instance v0, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 98
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 104
    new-instance v0, Lcom/android/server/LockSettingsStorage;

    new-instance v1, Lcom/android/server/LockSettingsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 91
    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 271
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 273
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 274
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 275
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 278
    const-string/jumbo v5, " needs permission "

    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 278
    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 278
    const-string/jumbo v5, " to read "

    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 279
    const-string/jumbo v5, " for user "

    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 284
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 285
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    const-string/jumbo v5, " needs permission "

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    const-string/jumbo v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    const-string/jumbo v5, " to read "

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 289
    const-string/jumbo v5, " for user "

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 283
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 270
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 599
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v3

    .line 601
    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v8, Lcom/android/server/LockSettingsService$4;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 600
    invoke-direct/range {v1 .. v8}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 537
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 538
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .line 539
    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v5, :cond_2

    iget-boolean v11, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 542
    :goto_0
    if-eqz v11, :cond_3

    .line 543
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/android/server/LockSettingsService$3;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move v7, p2

    move-wide/from16 v8, p3

    .line 548
    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 570
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v11, :cond_0

    .line 572
    move/from16 v0, p5

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/LockSettingsService;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 574
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 575
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 577
    :cond_1
    return-object v2

    .line 539
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "patternToVerify":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    .local v11, "shouldReEnrollBaseZero":Z
    goto :goto_0

    .line 545
    .end local v11    # "shouldReEnrollBaseZero":Z
    :cond_3
    move-object v6, p1

    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_1
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 500
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 501
    if-nez p2, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 504
    :goto_0
    if-nez p3, :cond_1

    .line 505
    const/4 v3, 0x0

    .line 507
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-interface {v4, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 510
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    .line 511
    return-object v5

    .line 503
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "enrolledCredentialBytes":[B
    goto :goto_0

    .line 506
    .end local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .local v3, "toEnrollBytes":[B
    goto :goto_1

    .line 514
    .end local v3    # "toEnrollBytes":[B
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 515
    .local v1, "hash":[B
    if-eqz v1, :cond_3

    .line 516
    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 521
    :goto_2
    return-object v1

    .line 519
    :cond_3
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getCurrentHandle(I)[B
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 413
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    move-result v2

    .line 414
    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_0

    .line 429
    const/4 v1, 0x0

    .line 434
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 435
    const-string/jumbo v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stored handle type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] but no handle available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    return-object v1

    .line 416
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 417
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    .line 418
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 419
    .end local v1    # "currentHandle":[B
    :cond_1
    const/4 v1, 0x0

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 422
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 423
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    .line 424
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 425
    .end local v1    # "currentHandle":[B
    :cond_2
    const/4 v1, 0x0

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 820
    :cond_0
    :try_start_1
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 821
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 822
    new-instance v1, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 823
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 824
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 827
    :cond_1
    :try_start_2
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Unable to acquire GateKeeperService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 828
    return-object v3

    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 798
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 799
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 800
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 802
    :cond_0
    return-object v2
.end method

.method private migrateOldData()V
    .locals 32

    .prologue
    .line 154
    :try_start_0
    const-string/jumbo v28, "migrated"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_2

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 156
    .local v10, "cr":Landroid/content/ContentResolver;
    sget-object v29, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    :goto_0
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    aget-object v26, v29, v28

    .line 157
    .local v26, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-static {v10, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 158
    .local v27, "value":Ljava/lang/String;
    if-eqz v27, :cond_0

    .line 159
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    :cond_0
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 163
    .end local v26    # "validSetting":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v28, "migrated"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    const-string/jumbo v28, "LockSettingsService"

    const-string/jumbo v29, "Migrated lock settings to new location"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v10    # "cr":Landroid/content/ContentResolver;
    :cond_2
    const-string/jumbo v28, "migrated_user_specific"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_9

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "user"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 170
    .local v19, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 171
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v25

    .line 172
    .local v25, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v22, 0x0

    .local v22, "user":I
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 174
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    .line 175
    .local v24, "userId":I
    const-string/jumbo v6, "lock_screen_owner_info"

    .line 176
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v28, "lock_screen_owner_info"

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 177
    .local v16, "ownerInfo":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 178
    const-string/jumbo v28, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    const-string/jumbo v28, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v24

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 185
    :cond_3
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v28, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 189
    .local v15, "ivalue":I
    if-eqz v15, :cond_5

    const/4 v12, 0x1

    .line 190
    .local v12, "enabled":Z
    :goto_2
    const-string/jumbo v29, "lock_screen_owner_info_enabled"

    if-eqz v12, :cond_6

    const/16 v28, 0x1

    :goto_3
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    .end local v12    # "enabled":Z
    .end local v15    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string/jumbo v28, "lock_screen_owner_info_enabled"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 172
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 189
    .restart local v15    # "ivalue":I
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "enabled":Z
    goto :goto_2

    .line 190
    :cond_6
    const/16 v28, 0x0

    goto :goto_3

    .line 191
    .end local v12    # "enabled":Z
    .end local v15    # "ivalue":I
    :catch_0
    move-exception v11

    .line 193
    .local v11, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 194
    const-string/jumbo v28, "lock_screen_owner_info_enabled"

    const-wide/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 257
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v16    # "ownerInfo":Ljava/lang/String;
    .end local v19    # "um":Landroid/os/UserManager;
    .end local v22    # "user":I
    .end local v24    # "userId":I
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v17

    .line 258
    .local v17, "re":Landroid/os/RemoteException;
    const-string/jumbo v28, "LockSettingsService"

    const-string/jumbo v29, "Unable to migrate old data"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v17    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    return-void

    .line 200
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    .restart local v19    # "um":Landroid/os/UserManager;
    .restart local v22    # "user":I
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string/jumbo v28, "migrated_user_specific"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    const-string/jumbo v28, "LockSettingsService"

    const-string/jumbo v29, "Migrated per-user lock settings to new location"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v19    # "um":Landroid/os/UserManager;
    .end local v22    # "user":I
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string/jumbo v28, "migrated_biometric_weak"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_c

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "user"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 207
    .restart local v19    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v25

    .line 208
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_b

    .line 209
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    .line 210
    .restart local v24    # "userId":I
    const-string/jumbo v28, "lockscreen.password_type"

    .line 211
    const-wide/16 v30, 0x0

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v20

    .line 213
    .local v20, "type":J
    const-string/jumbo v28, "lockscreen.password_type_alternate"

    .line 214
    const-wide/16 v30, 0x0

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    .line 216
    .local v8, "alternateType":J
    const-wide/32 v28, 0x8000

    cmp-long v28, v20, v28

    if-nez v28, :cond_a

    .line 217
    const-string/jumbo v28, "lockscreen.password_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v24

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 221
    :cond_a
    const-string/jumbo v28, "lockscreen.password_type_alternate"

    .line 222
    const-wide/16 v30, 0x0

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 208
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 225
    .end local v8    # "alternateType":J
    .end local v20    # "type":J
    .end local v24    # "userId":I
    :cond_b
    const-string/jumbo v28, "migrated_biometric_weak"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    const-string/jumbo v28, "LockSettingsService"

    const-string/jumbo v29, "Migrated biometric weak to use the fallback instead"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v13    # "i":I
    .end local v19    # "um":Landroid/os/UserManager;
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const-string/jumbo v28, "migrated_lockscreen_disabled"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_7

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "user"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 235
    .restart local v19    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v25

    .line 236
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v23

    .line 237
    .local v23, "userCount":I
    const/16 v18, 0x0

    .line 238
    .local v18, "switchableUsers":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    move/from16 v0, v23

    if-ge v13, v0, :cond_e

    .line 239
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 240
    add-int/lit8 v18, v18, 0x1

    .line 238
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 244
    :cond_e
    const/16 v28, 0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-le v0, v1, :cond_10

    .line 245
    const/4 v13, 0x0

    :goto_8
    move/from16 v0, v23

    if-ge v13, v0, :cond_10

    .line 246
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v28

    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    .line 248
    .local v14, "id":I
    const-string/jumbo v28, "lockscreen.disabled"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 249
    const-string/jumbo v28, "lockscreen.disabled"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 245
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 254
    .end local v14    # "id":I
    :cond_10
    const-string/jumbo v28, "migrated_lockscreen_disabled"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    const-string/jumbo v28, "LockSettingsService"

    const-string/jumbo v29, "Migrated lockscreen disabled flag"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5
.end method

.method private removeUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 745
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    .line 747
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 748
    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 751
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 752
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_0

    .line 753
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_0
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "unable to clear GK secure user id"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 389
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 390
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 392
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v4, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 393
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 394
    .local v1, "pi":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    goto :goto_0

    .line 388
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 312
    :cond_0
    return-void
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 399
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 400
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 402
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v4, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 403
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 404
    .local v1, "pi":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    goto :goto_0

    .line 398
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 626
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 629
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 630
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 633
    :cond_2
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_4

    .line 634
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v11

    .line 635
    .local v11, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 636
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 638
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 639
    if-nez p4, :cond_4

    .line 640
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 646
    :cond_3
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 651
    .end local v11    # "hash":[B
    :cond_4
    const/4 v14, 0x0

    .line 652
    .local v14, "shouldReEnroll":Z
    if-eqz p4, :cond_9

    .line 653
    const/4 v15, 0x0

    .line 654
    .local v15, "token":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 655
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    .line 654
    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 656
    .local v10, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .line 657
    .local v13, "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_6

    .line 658
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v4

    invoke-direct {v12, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 686
    .end local v14    # "shouldReEnroll":Z
    .end local v15    # "token":[B
    .local v12, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_5

    .line 688
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 689
    if-eqz v14, :cond_5

    .line 690
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 694
    :cond_5
    return-object v12

    .line 659
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v14    # "shouldReEnroll":Z
    .restart local v15    # "token":[B
    :cond_6
    if-nez v13, :cond_8

    .line 660
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v15

    .line 661
    .local v15, "token":[B
    if-nez v15, :cond_7

    .line 663
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 666
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_7
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    .line 667
    .local v14, "shouldReEnroll":Z
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v12, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 670
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v14, "shouldReEnroll":Z
    .local v15, "token":[B
    :cond_8
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 673
    .end local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v13    # "responseCode":I
    .end local v15    # "token":[B
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 674
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 673
    move/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 675
    .restart local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .line 676
    .restart local v13    # "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_a

    .line 677
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v4

    invoke-direct {v12, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 678
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_a
    if-nez v13, :cond_b

    .line 679
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    .line 680
    .local v14, "shouldReEnroll":Z
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 682
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v14, "shouldReEnroll":Z
    :cond_b
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 584
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 585
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 587
    :cond_0
    return-object v0
.end method

.method public checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 526
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public checkVoldPassword(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 699
    iget-boolean v3, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v3, :cond_0

    .line 700
    return v4

    .line 702
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 714
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 715
    .local v2, "service":Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, "password":Ljava/lang/String;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->clearPassword()V

    .line 717
    if-nez v1, :cond_1

    .line 718
    return v4

    .line 722
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 723
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 725
    return v5

    .line 728
    :catch_0
    move-exception v0

    .line 732
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 733
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-nez v3, :cond_3

    .line 735
    return v5

    .line 738
    :catch_1
    move-exception v0

    .line 741
    :cond_3
    return v4
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 322
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 324
    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 331
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 343
    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 346
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    return-object v2

    :cond_0
    :try_start_1
    const-string/jumbo v2, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v2

    .line 348
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    throw v2

    .line 352
    .end local v0    # "ident":J
    :cond_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public havePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    return v0
.end method

.method public retainPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    if-eqz p1, :cond_1

    .line 372
    sput-object p1, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public sanitizePassword()V
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 378
    :cond_0
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 297
    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    return-void

    .line 297
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 473
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 475
    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 477
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 478
    invoke-direct {p0, v3, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 479
    return-void

    .line 482
    :cond_0
    if-nez v0, :cond_2

    .line 483
    if-eqz p2, :cond_1

    .line 484
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    const/4 p2, 0x0

    .line 489
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 490
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_3

    .line 491
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 472
    :goto_0
    return-void

    .line 493
    :cond_3
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Failed to enroll password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 445
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 447
    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 449
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 450
    invoke-direct {p0, v3, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 451
    return-void

    .line 454
    :cond_0
    if-nez v0, :cond_2

    .line 455
    if-eqz p2, :cond_1

    .line 456
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    const/4 p2, 0x0

    .line 461
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 462
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_3

    .line 463
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 444
    :goto_0
    return-void

    .line 465
    :cond_3
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Failed to enroll pattern"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 303
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 309
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    .line 140
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Failure retrieving IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 593
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method
